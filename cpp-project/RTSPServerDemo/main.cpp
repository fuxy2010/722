#include <stdio.h>
#include <memory.h>
#include <netinet/in.h>
#include "RTSPServer.h"

int main(int argc, char **argv)
{
	RTSPServerLib::CRTSPServer* _rtsp_server = new RTSPServerLib::CRTSPServer(1554);
	
	//////////////////////////////////////////////////////////////////////////
	unsigned short i = 0;
	char CSRC[] = "RTSP Test!";

	typedef struct tagRTPHeader//fym struct RTPHeader
	{
		unsigned char csrccount:4;
		unsigned char extension:1;
		unsigned char padding:1;
		unsigned char version:2;

		unsigned char payloadtype:7;
		unsigned char marker:1;

		unsigned short sequencenumber;
		unsigned long timestamp;
		unsigned long ssrc;
	}
	RTPHeader, *RTPHeaderPtr;//fym
	
	char content[1000];
	unsigned short print_status = 0;
	unsigned short num = 200;
	unsigned short sequence[200];

	while(1)
	{
		for(unsigned short i = 0; i < num; ++i)
		{
			::memset(content, i, sizeof(content));

			RTPHeader* header = reinterpret_cast<RTPHeader*>(content);
			header->csrccount = 0;
			header->extension = 0;
			header->padding = 0;
			header->version = 2;
			header->payloadtype = 0;
			header->marker = 1;
			header->sequencenumber = htons(sequence[i]++);;
			header->timestamp = htonl(clock());//fym htonl(timeGetTime());
			header->ssrc = htonl(i);

			_rtsp_server->input_stream_data(i, content, sizeof(content), 0);//fym

			header->payloadtype = 1;
			_rtsp_server->input_stream_data(i, content, sizeof(content), 1);//fym
		}

#ifdef __linux__
		//usleep(50000);
#else
		Sleep(50);
#endif

		if(!(print_status++ % 50))
			_rtsp_server->query_relay_source();
	}
	
	return 0;
}
