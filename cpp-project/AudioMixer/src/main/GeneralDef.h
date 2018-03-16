// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2009-01 ~ 2009-03
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _GENERAL_DEF_H_
#define _GENERAL_DEF_H_

#include <string>
#include <vector>
#include <deque>
#include <list>
#include <map>
#include <set>


#ifndef _SENDING_DATA_BLOCK_SIZE_
#define _SENDING_DATA_BLOCK_SIZE_	1400
#endif

namespace ScheduleServer
{
	//²ÎÊýÉÏÏÂÎÄÀàÐÍ¶¨Òå
	typedef std::map<std::string, std::string> SS_CTX;
    
    typedef enum
	{
		MODE_BROADCAST = 0,//
        MODE_RELAY,
        MODE_CONFERENCE
	}
	RUNNING_MODE;
    
    typedef enum
	{
		G711_CODEC = 0,
        ILBC_CODEC
	}
	AUDIO_CODEC_TYPE;

	//Éè±¸ÀàÐÍ¶¨Òå
	typedef enum
	{
		SIPStack = 0,	//SIP Server
		Unknown			//Î´Öª
	}Device_Type;

	typedef struct tagTIME_INFO
	{
		unsigned long year;		//[1900,--]
		unsigned long month;	//[1, 12]
		unsigned long day;		//[1, 31]
		unsigned long hour;		//[0, 23]
		unsigned long minute;	//[0, 59]
		unsigned long second;	//[0, 59]

		tagTIME_INFO() : year(0), month(0), day(0), hour(0), minute(0), second(0)
		{
		}
	}
	TIME_INFO;

    //·µ»ØÖµÀàÐÍ¶¨Òå
    typedef enum
    {
        SS_NoErr = 0,						//º¯Êýµ÷ÓÃ³É¹¦

		//·þÎñÆ÷Æô¶¯
		SS_ServerStartFail,					//·þÎñÆ÷Æô¶¯Ê§°Ü

		//Êý¾Ý¿â´úÀí
		SS_InvalidDBConnection,				//Êý¾Ý¿âÁ¬½ÓÊ§Ð§
		SS_UserNameOrPasswdError,			//ÓÃ»§Ãû»òÃÜÂë´íÎó
		SS_ExecFail,						//Ö´ÐÐSQLÓï¾äÊ§°Ü
		SS_QueryFail,						//²éÑ¯¼ÇÂ¼Ê§°Ü

		//Í¨ÐÅÄ£¿é
		SS_CreateServerFail,				//´´½¨Í¨Ñ¶Æ÷·þÎñ²àÊ§°Ü
		SS_InvalidClientConnection,			//¿Í»§¶Ë²àÁ´½Ó²»¿ÉÓÃ
		SS_SendSyncSignalFail,				//¿Í»§¶Ë²à·¢ËÍÍ¬²½ÐÅÁîÊ§°Ü
		SS_SendAsyncSignalFail,				//¿Í»§¶Ë²à·¢ËÍÒì²½ÐÅÁîÊ§°Ü
		SS_SendSyncDataFail,				//¿Í»§¶Ë²à·¢ËÍÍ¬²½Êý¾ÝÊ§°Ü
		SS_SendAsyncDataFail,				//¿Í»§¶Ë²à·¢ËÍÒì²½Êý¾ÝÊ§°Ü

		//Éè±¸½ÓÈë²å¼þÄ£¿é¼ÓÔØ
		SS_LoadDeviceAccessModuleFail,		//¼ÓÔØÊ§°Ü
		SS_UnloadDeviceAccessModuleFail,	//Ð¶ÔØÊ§°Ü

		//»ñÈ¡Éè±¸½ÓÈë²å¼þÄ£¿éÖ¸Õë
		SS_GetDeviceAccessModuleFail,		//»ñÈ¡Éè±¸½ÓÈë²å¼þÖ¸ÕëÊ§°Ü

		//UA²Ù×÷
		SS_InsertUAFail,					//²åÈëUAÊ§°Ü
		SS_InsertMediaDataFail,				//²åÈëÃ½ÌåÊý¾Ýµ½¶ÓÁÐÊ§°Ü

		//SIPStack½ÓÈë
		SS_ConnectSIPStackFail,				//Á¬½ÓSIPStackÊ§°Ü
		SS_DisconnectSIPStackFail,				//¶Ï¿ªSIPStackÊ§°Ü

		//Ó²¼þÉè±¸Ñ²¼ì
		SS_DeviceInspectionFail,			//Ó²¼þÉè±¸Ñ²¼ìÊ§°Ü

		//ÏµÍ³»áÒéÏß³Ì
		SS_StartConferenceThreadFail,		//Æô¶¯»áÒéÏß³ÌÊ§°Ü

		//ÈÎÎñÏß³Ì
		SS_StartTaskThreadFail,			//Æô¶¯ÈÎÎñÏß³ÌÊ§°Ü
		SS_AddTaskFail,					//Ìí¼ÓÈÎÎñÊ§°Ü

		//ÈÎÎñ¶ÓÁÐ
		SS_InvalidTask,					//´íÎóÈÎÎñ

		//²éÑ¯ÈÎÎñÖ´ÐÐ½á¹û
		SS_QueryTaskResultFail,			//²éÑ¯ÈÎÎñÖ´ÐÐ½á¹ûÊ§°Ü

		//¸üÐÂÈÎÎñ
		SS_SyncTaskFail,					//¸üÐÂÈÎÎñÊ§°Ü

		//ÊÂ¼þÊý¾Ý²Ù×÷
		SS_FetchUserAgentFail,				//»ñÈ¡ÊÂ¼þÊý¾ÝÊ§°Ü

		//RTP´«Êä
		SS_RTPSendSessionUnAvailable,		//RTP·¢ËÍSession²»¿ÉÓÃ
		SS_RTPRecvSessionUnAvailable,		//RTP½ÓÊÕSession²»¿ÉÓÃ
		SS_AddRTPHeaderFail,				//Ìí¼ÓRTP°üÍ·Ê§°Ü
		SS_SendPacketFail,					//·¢ËÍRTP°üÊ§°Ü

		//»áÒé¿ØÖÆ
		SS_ConferenceControlFail,			//»áÒé¿ØÖÆÊ§°Ü
		SS_UnknownParticipant,				//Î´ÖªµÄÓë»áÈË
		SS_ParticipantsExisted,				//ÖØ¸´Ìí¼ÓÓë»áÈËÔ±

		//SIPÏûÏ¢
		SS_ErrorSIPMessage,					//´íÎóµÄSIPÏûÏ¢

		//MQTTÏûÏ¢
		SS_ErrorMQTTMessage,					//´íÎóµÄMQTTÏûÏ¢

		//ÐéÄâUA
		SS_StartVirtualUAThreadFail,					//Æô¶¯ÐéÄâUAÏß³ÌÊ§°Ü


        SS_Unknown_Error					//Î´Öª´íÎó    
    }SS_Error;
    
	//Ïß³ÌÀàÐÍ
	typedef enum
	{
		CONFERENCE_THREAD = 0,//»áÒéÏß³Ì
		TASK_THREAD,//ÈÎÎñÏß³Ì
		SIGNAL_THREAD,//SIPÐÅÁî´¦ÀíÏß³Ì
		COMMUNICATOR_THREAD,//ICEÐÅÁî·¢ËÍÏß³Ì
		WEB_THREAD,//Web²éÑ¯ÏìÓ¦Ïß³Ì
		MAINTANCE_THREAD,//Î¬»¤Ïß³Ì
		MQTT_THREAD,//mqtt thread
        PLAY_THRED,//local pcm play thread
        RECORD_THREAD//local pcm record thread
	}
	THREAD_TYPE;
    
    //与会人员角色
	typedef enum
	{
		Speaker = 0,//发言人
		Audience,//听众
		Observer//旁观者，例如曾经与会后被剔除者
	}
	PARTICIPANT_ROLE;

	//会议类型
	typedef enum
	{
		Common_Conference = 0,//普通会议
		SOS_Conference,//SOS会议
		WEB_Conference//PC发起会议
	}
	CONFERENCE_TYPE;

	//RTP°üÀàÐÍ
	typedef enum
	{
        G711RTPPacket = 0,
		AMRNBRTPPacket,//ÒôÆµ°ü
        ILBCRTPPacket,        
		PCMRTPPacket,//ÒôÆµ°ü
		H264RTPPacket,//ÊÓÆµ°ü
		UnknownRTPPacket//Î´Öª
	}
	RTP_PACKET_TYPE;

	//UA×´Ì¬,Ö»ÄÜÔÚVUA·¢ËÍ»ò´¦ÀíÊÕµ½µÄSIPÏûÏ¢Ê±¸ü¸Ä!!!
	typedef enum
	{
		//¿ÕÏÐ
		UA_STATUS_IDLE = 0,
		//ºô½Ð»ò±»½ÐÖÐ
		UA_STATUS_CALLING,
		//Í¨»°ÖÐ
		UA_STATUS_IN_CALL
	}
	USER_AGENT_STATUS;

	//¸ù¾Ý»áÒéÈÎÎñÐè¶ÔUAÖ´ÐÐµÄ¶¯×÷
	typedef enum
	{
		//Ê²Ã´¶¼²»×ö
		UA_ACTION_NOTHING = 0,
		//ºô½Ð
		UA_ACTION_CALL,
		//ÖØÐÂºô½Ð
		UA_ACTION_RECALL,
		//¹Ò¶Ï»ò·ÅÆúºô½Ð
		UA_ACTION_HANG_UP
	}
	USER_AGENT_ACTION;

	//UAÀàÐÍ
	typedef enum
	{
		UA_MobilePhone = 0,//ÊÖ»ú
		UA_Unknown//Î´Öª
	}
	USER_AGENT_TYPE;

}

#ifndef UA_NUM
#define UA_NUM  4
#endif

#ifndef AUDIO_SAMPLING_RATE
//#define AUDIO_SAMPLING_RATE 60
#define AUDIO_SAMPLING_RATE 20
#endif

#ifndef FRAME_LENGTH_IN_SHORT
//#define FRAME_LENGTH_IN_SHORT 480
#define FRAME_LENGTH_IN_SHORT 160
#endif

#ifndef FRAME_LENGTH_IN_BYTE
//#define FRAME_LENGTH_IN_BYTE 960
#define FRAME_LENGTH_IN_BYTE 320
#endif

#endif // _GENERAL_DEF_H_
