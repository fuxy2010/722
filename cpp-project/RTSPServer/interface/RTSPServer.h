#ifndef _RTSP_SERVER_H_
#define _RTSP_SERVER_H_

#include <iostream>
#include <string>
#include <list>

#ifdef RTSP_SERVER_CLASS_TYPE
#undef RTSP_SERVER_CLASS_TYPE
#endif

//ÈçÊ¹ÓÃ¾²Ì¬¿â£¬ÐèÔÚ³ÌÐòÔ¤´¦ÀíÑ¡ÏîÖÐ¼ÓÈëºê¶¨Òå"_EXPORT_LIB"
#ifdef __Win32__
	#ifdef _EXPORT_LIB
		#define RTSP_SERVER_CLASS_TYPE
	#else
		#ifdef _EXPORT_DLL
			#define RTSP_SERVER_CLASS_TYPE __declspec(dllexport)
		#else
			#define RTSP_SERVER_CLASS_TYPE __declspec(dllimport)
		#endif
	#endif
#else
	#define RTSP_SERVER_CLASS_TYPE
#endif

namespace RTSPServerLib
{
	typedef struct tagRELAY_SOURCE_INFO
	{
		unsigned short		_uuid;//×ª·¢Ô´UUID
		unsigned short		_client_count;//µ±Ç°Á¬½Ó¸Ã×ª·¢Ô´µÄ¿Í»§¶Ë×ÜÊý
		std::list<double>	_bit_rate;//×ª·¢Ô´¸÷Á÷µÄ´«ÊäÂëÂÊ, kbps
		unsigned long		_start_time;//¸Ã×ª·¢Ô´Æô¶¯Ê±¼ä
	}RELAY_SOURCE_INFO, *RELAY_SOURCE_INFO_PTR;

	class RTSP_SERVER_CLASS_TYPE CRTSPServer
	{
	public:
		CRTSPServer(unsigned short rtsp_port = 554);
		~CRTSPServer();

		enum//Ã½ÌåÁ÷ÀàÐÍ
		{
			kVideoStream =	0,
			kAudioStream =	1,
			kWhiteBoard =	2,
		};

	public:
		//µÃµ½µ±Ç°RTSP¼àÌý¶Ë¿Ú
		unsigned short get_rtsp_port() { return _rtsp_port; }

		//É÷ÓÃ¸Ã½Ó¿Ú£¡£¡£¡nMaxPacketSize²»¿É¹ýÐ¡
		//ÉèÖÃÊý¾Ý°ü×î´ó³ß´ç£¨²»µÃ³¬¹ý1400£©
		void set_max_packet_size(unsigned short nMaxPacketSize = 1400);

		//ÊäÈëÊý¾Ý
		int input_stream_data(unsigned short uuid, void* pData, unsigned long nLen, unsigned short nDataType, unsigned long long llTimeStampSSRC = 0);

		//²éÑ¯RTSP»á»°ÐÅÏ¢
		int query_relay_source();

		//ÉèÖÃ½ÓÊÕRTSPClientÊý¾ÝµÄ»Øµ÷º¯Êý
		void set_data_callback(void (*pDataCallBackFunc)(const char* data, const unsigned long& length));
		
	public://for old version
		int add_relay_source(unsigned short uuid, std::string& sdp);
		int remove_relay_source(unsigned short uuid);

	private:
		unsigned short _rtsp_port;
	};
}

#endif //__RTSP_SERVER_H__
