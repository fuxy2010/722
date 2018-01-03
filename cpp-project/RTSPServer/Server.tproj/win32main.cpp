/*
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
 */
/*
    File:       win32main.cpp

    Contains:   main function to drive streaming server on win32.


*/

#include "getopt.h"
#include "FilePrefsSource.h"

#include "RunServer.h"
#include "QTSServer.h"
#include "QTSSExpirationDate.h"
#include "GenerateXMLPrefs.h"

//
// Data
static FilePrefsSource sPrefsSource(true); // Allow dups
static XMLPrefsParser* sXMLParser = NULL;
static FilePrefsSource sMessagesSource;
static UInt16 sPort = 0; //port can be set on the command line
static int sStatsUpdateInterval = 1;//fym 0;
static QTSS_ServerState sInitialState = qtssRunningState;

int main(int argc, char * argv[]) 
{
	extern char* optarg;
    
    //First thing to do is to read command-line arguments.
    int ch;
    
    char* theConfigFilePath = "./streamingserver.cfg";
    char* theXMLFilePath = "./streamingserver.xml";
    Bool16 notAService = true;//fym false;
    Bool16 theXMLPrefsExist = true;
    Bool16 dontFork = false;
 
#if _DEBUG
    char* compileType = "Compile_Flags/_DEBUG; ";
#else
   char* compileType = "";
#endif

    qtss_printf("\n<<<<<< Current Path: %s >>>>>>\n", argv[0]);//fym
    
    //
    // Check expiration date
    //ÑéÖ¤ÊÇ·ñ¹ýÆÚ
    QTSSExpirationDate::PrintExpirationDate();
    if(QTSSExpirationDate::IsSoftwareExpired())
    {
        qtss_printf("Streaming Server has expired\n");
        ::exit(0);
    }

    //
    // Create an XML prefs parser object using the specified path
    sXMLParser = new XMLPrefsParser(theXMLFilePath);
    
    //
    // Check to see if the XML file exists as a directory. If it does,
    // just bail because we do not want to overwrite a directory
    if(sXMLParser->DoesFileExistAsDirectory())
    {
        qtss_printf("Directory located at location where streaming server prefs file should be.\n");
        ::exit(0);
    }
    
    if(!sXMLParser->CanWriteFile())
    {
        qtss_printf("Cannot write to the streaming server prefs file.\n");
        ::exit(0);
    }

    // If we aren't forced to create a new XML prefs file, whether
    // we do or not depends solely on whether the XML prefs file exists currently.
    if(theXMLPrefsExist)
        theXMLPrefsExist = sXMLParser->DoesFileExist();
    
    if(!theXMLPrefsExist)
    {
        //
        //Construct a Prefs Source object to get server preferences
        
        int prefsErr = sPrefsSource.InitFromConfigFile(theConfigFilePath);
        if( prefsErr )
            qtss_printf("Could not load configuration file at %s.\n Generating a new prefs file at %s\n", theConfigFilePath, theXMLFilePath);

        //
        // Generate a brand-new XML prefs file out of the old prefs
        int xmlGenerateErr = GenerateAllXMLPrefs(&sPrefsSource, sXMLParser);
        if(xmlGenerateErr)
        {
            qtss_printf("Fatal Error: Could not create new prefs file at: %s. (%d)\n", theConfigFilePath, OSThread::GetErrno());
            ::exit(-1);
        }       
    }

    //
    // Parse the configs from the XML file
    int xmlParseErr = sXMLParser->Parse();
    if(xmlParseErr)
    {
        qtss_printf("Fatal Error: Could not load configuration file at %s. (%d)\n", theXMLFilePath, OSThread::GetErrno());
        ::exit(-1);
    }

    //
    // Construct a messages source object
    sMessagesSource.InitFromConfigFile("qtssmessages.txt");

#ifdef __Win32__
    // Start Win32 DLLs
    WORD wsVersion = MAKEWORD(1, 1);
    WSADATA wsData;
    (void)::WSAStartup(wsVersion, &wsData);
#endif

	//²»ÒÔ·þÎñÐÎÊ½ÔËÐÐ
    if(notAService)
    {
        // If we're running off the command-line, don't do the service initiation crap.
        ::StartServer(sXMLParser, &sMessagesSource, 1554/*sPort*/, sStatsUpdateInterval, sInitialState, false,0, kRunServerDebug_Off); // No stats update interval for now
        ::RunServer();

		while(1)
		{
			OSThread::Sleep(1000);
		}

		//fym
		if(NULL != sXMLParser)
		{
			delete sXMLParser;
			sXMLParser = NULL;
		}

        ::exit(0);
    }

    return (0);
}

