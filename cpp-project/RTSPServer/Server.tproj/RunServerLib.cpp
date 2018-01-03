/*
 *
 * @APPLE_LICENSE_HEADER_START@
 * 
 * Copyright (c) 1999-2003 Apple Computer, Inc.  All Rights Reserved.
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this
 * file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_LICENSE_HEADER_END@
 *
 */
/*
    File:       main.cpp

    Contains:   main function to drive streaming server.

    

*/

#include <errno.h>

#include "RunServerLib.h"
#include "SafeStdLib.h"
#include "OS.h"
#include "OSMemory.h"
#include "OSThread.h"
#include "Socket.h"
#include "SocketUtils.h"
#include "ev.h"
#include "OSArrayObjectDeleter.h"
#include "Task.h"
#include "IdleTask.h"
#include "TimeoutTask.h"
#include "DateTranslator.h"
#include "QTSSRollingLog.h"


#ifndef __Win32__
    #include <sys/types.h>
    #include <unistd.h>
#endif
#include "QTSServerInterface.h"
#include "QTSServer.h"

#include <stdlib.h>
#include <sys/stat.h>

QTSServer* sServer = NULL;
int sStatusUpdateInterval = 0;

#ifdef __sgi__ 
#include <sched.h>
#endif

QTSS_ServerState StartServerLib(XMLPrefsParser* inPrefsSource, PrefsSource* inMessagesSource, UInt16 inPortOverride, int statsUpdateInterval, QTSS_ServerState inInitialState, Bool16 inDontFork, UInt32 debugLevel, UInt32 debugOptions)
{
    //Mark when we are done starting up. If auto-restart is enabled, we want to make sure
    //to always exit with a status of 0 if we encountered a problem WHILE STARTING UP. This
    //will prevent infinite-auto-restart-loop type problems
    Bool16 doneStartingUp = false;
    QTSS_ServerState theServerState = qtssStartingUpState;
    
    sStatusUpdateInterval = statsUpdateInterval;
    
    //Initialize utility classes
    OS::Initialize();
    OSThread::Initialize();

    Socket::Initialize();
    SocketUtils::Initialize(!inDontFork);

#if !MACOSXEVENTQUEUE
    ::select_startevents();//initialize the select() implementation of the event queue
#endif
    
    //start the server
    QTSSDictionaryMap::Initialize();
    QTSServerInterface::Initialize();// this must be called before constructing the server object
    sServer = NEW QTSServer();
    sServer->SetDebugLevel(debugLevel);
    sServer->SetDebugOptions(debugOptions);
    
    // re-parse config file
    inPrefsSource->Parse();

    Bool16 createListeners = true;
    if (qtssShuttingDownState == inInitialState) 
        createListeners = false;
    
    sServer->Initialize(inPrefsSource, inMessagesSource, inPortOverride,createListeners);

    if (inInitialState == qtssShuttingDownState)
    {  
        sServer->InitModules(inInitialState);
        return inInitialState;
    }
    
    OSCharArrayDeleter runGroupName(sServer->GetPrefs()->GetRunGroupName());
    OSCharArrayDeleter runUserName(sServer->GetPrefs()->GetRunUserName());
    OSThread::SetPersonality(runUserName.GetObject(), runGroupName.GetObject());

    if (sServer->GetServerState() != qtssFatalErrorState)
    {
        UInt32 numThreads = 0;
        
        if (OS::ThreadSafe())
        {
            numThreads = sServer->GetPrefs()->GetNumThreads(); // whatever the prefs say
            if (numThreads == 0)
                numThreads = OS::GetNumProcessors(); // 1 worker thread per processor
        }
        if (numThreads == 0)
            numThreads = 1;

		//fym CPUÓÐ¼¸¸öºËÐÄ¼´´´½¨¼¸¸öÈÎÎñÏß³Ì
		TaskThreadPool::AddThreads(numThreads);

    #if DEBUG
        qtss_printf("Number of task threads: %lu\n",numThreads);
    #endif
    
        // Start up the server's global tasks, and start listening
        TimeoutTask::Initialize();     // The TimeoutTask mechanism is task based,
                                    // we therefore must do this after adding task threads
                                    // this be done before starting the sockets and server tasks
     }

    //Make sure to do this stuff last. Because these are all the threads that
    //do work in the server, this ensures that no work can go on while the server
    //is in the process of staring up
    if (sServer->GetServerState() != qtssFatalErrorState)
    {
		//´´½¨Ò»¸öTimeoutTaskThreadÀà¶ÔÏó£¬Êµ¼ÊÉÏÕâ¸öÀàµÄÃû×ÖÈÝÒ×²úÉú»ìÏý£¬Ëü²¢²»ÊÇÒ»¸öÏß³ÌÀà£¬¶øÊÇÒ»¸ö»ùÓÚTaskÀàµÄÈÎÎñÀà¡£
		//ÒòÎªÇ°ÃæÒÑ¾­ÔÚÏß³Ì³ØÀïÌí¼ÓÁËÒ»¸öÈÎÎñÏß³Ì£¬ËùÒÔÔÚÕâÀïµ÷ÓÃsignalµÄÊ±ºò£¬¾Í»áÕÒµ½Õâ¸öÏß³Ì
		//²¢°ÑÊÂ¼þ¼ÓÈëµ½Õâ¸öÏß³ÌµÄÈÎÎñ¶ÓÁÐÀï£¬µÈ´ý±»´¦Àí¡£(ÕâÊ±£¬¸Õ²Å´´½¨µÄÏß³ÌÓ¦¸ÃÒ²ÔÚTaskThread::Entryº¯ÊýÀïµÈ´ýÊÂ¼þµÄ·¢Éú)
        IdleTask::Initialize();

		//Æô¶¯SocketÀàµÄsEventThreadÀàËù¶ÔÓ¦µÄÏß³Ì¡£sEventThreadÀàÔÚSocket::Initializeº¯ÊýÀï´´½¨
		//µ½Ä¿Ç°ÎªÖ¹£¬ÕâÒÑÊÇµÚÈý¸öÆô¶¯µÄÏß³Ì£¬·Ö±ðÊÇÈÎÎñÏß³Ì¡¢¿ÕÏÐÈÎÎñÏß³Ì¡¢ÊÂÎñÏß³Ì¡£
        Socket::StartThread();
        OSThread::Sleep(1000);
        
        //
        // On Win32, in order to call modwatch the Socket EventQueue thread must be
        // created first. Modules call modwatch from their initializer, and we don't
        // want to prevent them from doing that, so module initialization is separated
        // out from other initialization, and we start the Socket EventQueue thread first.
        // The server is still prevented from doing anything as of yet, because there
        // aren't any TaskThreads yet.
        sServer->InitModules(inInitialState);

		//´´½¨RTCPTask¡¢RTPStatsUpdaterTask
		//Start listening£¬ÒòÎªTCPListenerSocketÊÇEventContextµÄ¼Ì³ÐÀà£¬ËùÒÔÕâÀïÊµ¼ÊÉÏµ÷ÓÃµÄÊÇEventContext::RequestEvent().
        sServer->StartTasks();

		//Õë¶ÔÏµÍ³µÄÃ¿Ò»¸öipµØÖ·£¬¶¼´´½¨²¢°ó¶¨Ò»¸ösocket¶Ë¿Ú¶Ô£¨·Ö±ðÓÃÓÚRTP data·¢ËÍºÍRTCP data½ÓÊÕ£©£¬²¢ÉêÇë¶ÔÕâÁ½¸ösocket¶Ë¿ÚµÄ¼àÌý¡£
		//×¢Òâµ÷ÓÃCreateUDPSocketPairº¯Êý´«½øÈ¥µÄPort²ÎÊýÎª0£¬ËùÒÔÔÚÍ¨¹ýDarwin²¥·Å¾²Ì¬¶àÃ½ÌåÎÄ¼þÊ±
		//²»ÂÛÊÇÍ¬Ò»¸öÃ½ÌåÎÄ¼þµÄÒôÆµ¡¢ÊÓÆµÁ÷»¹ÊÇÍ¬Ê±²¥·ÅµÄ¶à¸öÃ½ÌåÎÄ¼þ£¬¶¼ÊÇÕâÁ½¸ösocket¶Ë¿ÚÀ´Íê³ÉRTCP¡¢RTPÊý¾ÝµÄ´¦Àí¡£
        //fym for leak sServer->SetupUDPSockets(); // udp sockets are set up after the rtcp task is instantiated

        theServerState = sServer->GetServerState();
    }

    if (theServerState != qtssFatalErrorState)
    {
        CleanPidLib(true);
        WritePidLib(!inDontFork);

        doneStartingUp = true;
        qtss_printf("Streaming Server done starting up\n");
        OSMemory::SetMemoryError(ENOMEM);
    }


    // SWITCH TO RUN USER AND GROUP ID
	//Ö´ÐÐsetgid¡¢setuidº¯Êý
    if (!sServer->SwitchPersonality())
        theServerState = qtssFatalErrorState;

   //
    // Tell the caller whether the server started up or not
    return theServerState;
}

void WritePidLib(Bool16 forked)
{
#ifndef __Win32__
    // WRITE PID TO FILE
    OSCharArrayDeleter thePidFileName(sServer->GetPrefs()->GetPidFilePath());
    FILE *thePidFile = fopen(thePidFileName, "w");
    if(thePidFile)
    {
        if (!forked)
            fprintf(thePidFile,"%d\n",getpid());    // write own pid
        else
        {
            fprintf(thePidFile,"%d\n",getppid());    // write parent pid
            fprintf(thePidFile,"%d\n",getpid());    // and our own pid in the next line
        }                
        fclose(thePidFile);
        //fym sHasPID = true;
    }
#endif
}

void CleanPidLib(Bool16 force)
{
#ifndef __Win32__
    if (force)//fym if (sHasPID || force)
    {
        OSCharArrayDeleter thePidFileName(sServer->GetPrefs()->GetPidFilePath());
        unlink(thePidFileName);
    }
#endif
}


//fym
void StopServerLib()
{
	if(NULL == sServer)
		return;

	QTSS_ServerState theServerState = sServer->GetServerState();

	//
	// Kill all the sessions and wait for them to die,
	// but don't wait more than 5 seconds
	sServer->KillAllRTPSessions();

	OSThread::Sleep(500);//fym

	for (UInt32 shutdownWaitCount = 0; (sServer->GetNumRTPSessions() > 0) && (shutdownWaitCount < 5); shutdownWaitCount++)
		OSThread::Sleep(1000);

	//Now, make sure that the server can't do any work
	TaskThreadPool::RemoveThreads();

	OSThread::Sleep(500);//fym

	//now that the server is definitely stopped, it is safe to initate
	//the shutdown process
	delete sServer;

	CleanPidLib(false);
	//ok, we're ready to exit. If we're quitting because of some fatal error
	//while running the server, make sure to let the parent process know by
	//exiting with a nonzero status. Otherwise, exit with a 0 status
	if (theServerState == qtssFatalErrorState)
		::exit (-2);//-2 signals parent process to restart server
}

//fym
void FormattedTotalBytesBuffer(char *outBuffer, int outBufferLen, UInt64 totalBytes)
{
	Float32 displayBytes = 0.0;
	char  sizeStr[] = "B";
	char* format = NULL;

	if (totalBytes > 1073741824 ) //GBytes
	{   displayBytes = (Float32) ( (Float64) (SInt64) totalBytes /  (Float64) (SInt64) 1073741824 );
	sizeStr[0] = 'G';
	format = "%.4f%s ";
	}
	else if (totalBytes > 1048576 ) //MBytes
	{   displayBytes = (Float32) (SInt32) totalBytes /  (Float32) (SInt32) 1048576;
	sizeStr[0] = 'M';
	format = "%.3f%s ";
	}
	else if (totalBytes > 1024 ) //KBytes
	{    displayBytes = (Float32) (SInt32) totalBytes /  (Float32) (SInt32) 1024;
	sizeStr[0] = 'K';
	format = "%.2f%s ";
	}
	else
	{    displayBytes = (Float32) (SInt32) totalBytes;  //Bytes
	sizeStr[0] = 'B';
	format = "%4.0f%s ";
	}

	outBuffer[outBufferLen -1] = 0;
	qtss_snprintf(outBuffer, outBufferLen -1,  format , displayBytes, sizeStr);
}

//fym
void PrintStatus()
{
	char* thePrefStr = NULL;
	UInt32 theLen = 0;

	qtss_printf("\n------------------------------------------------------------------\n");

	//RTP-Conns
	(void)QTSS_GetValueAsString(sServer, qtssRTPSvrCurConn, 0, &thePrefStr);
	qtss_printf( "RTP-Conns %s, ", thePrefStr);
	delete [] thePrefStr; thePrefStr = NULL;

	//RTSP-Conns
	(void)QTSS_GetValueAsString(sServer, qtssRTSPCurrentSessionCount, 0, &thePrefStr);
	qtss_printf( "RTSP-Conns %s, ", thePrefStr);
	delete [] thePrefStr; thePrefStr = NULL;

	//HTTP-Conns
	(void)QTSS_GetValueAsString(sServer, qtssRTSPHTTPCurrentSessionCount, 0, &thePrefStr);
	qtss_printf( "HTTP-Conns %s, ", thePrefStr);
	delete [] thePrefStr; thePrefStr = NULL;

	//TotConn
	(void)QTSS_GetValueAsString(sServer, qtssRTPSvrTotalConn, 0, &thePrefStr);
	qtss_printf( "TotConn %s\n", thePrefStr);
	delete [] thePrefStr; thePrefStr = NULL;

	//kBits/Seca
	UInt32 curBandwidth = 0;
	theLen = sizeof(curBandwidth);
	(void)QTSS_GetValue(sServer, qtssRTPSvrCurBandwidth, 0, &curBandwidth, &theLen);
	qtss_printf( "Bitrate %u kbps, ", curBandwidth/1024);

	//Pkts/Sec
	(void)QTSS_GetValueAsString(sServer, qtssRTPSvrCurPackets, 0, &thePrefStr);
	qtss_printf( "Pktrate %s pktps, ", thePrefStr);
	delete [] thePrefStr; thePrefStr = NULL;


	//TotBytes
	UInt64 totalBytes = sServer->GetTotalRTPBytes();
	char  displayBuff[32] = "";
	FormattedTotalBytesBuffer(displayBuff, sizeof(displayBuff),totalBytes);
	qtss_printf( "TotBytes %s\n", displayBuff);

	//TotPktsLost
	qtss_printf( "TotPktsLost %8"_64BITARG_"u\n", sServer->GetTotalRTPPacketsLost());

	qtss_printf( "\n");

}

//DataCallBackFunc = NULL;
