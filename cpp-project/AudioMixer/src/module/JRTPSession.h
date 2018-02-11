// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _JRTP_SESSION_H_
#define _JRTP_SESSION_H_

#include <iostream>
#include <string>
#include <vector>

#include "GeneralDef.h"
#include "rtpsession.h"

namespace ScheduleServer
{
    class MyRTPSession : public jrtplib::RTPSession
    {
    protected:
        void OnPollThreadStep();
        void ProcessRTPPacket(const jrtplib::RTPSourceData& srcdat,const jrtplib::RTPPacket& packet);
    };

    class CRTPRecvSession
	{
	public:
		CRTPRecvSession(unsigned short port);
		virtual ~CRTPRecvSession();

	public:
		void set_rtp_callback(jrtplib::RTPCallBackFunc func)
		{
            _rtp_session.set_rtp_callback(func);
		}
        
        /*//ÓÃÓÚÄ£ÄâUA·¢ËÍSIPÏûÏ¢
		SS_Error send_udp_packet(const std::string& dest_ip, const unsigned short dest_port, const unsigned char* packet, const unsigned long& length)
		{
			sockaddr_in dest_addr;

			dest_addr.sin_family = AF_INET;
			dest_addr.sin_addr.s_addr = inet_addr(dest_ip.c_str());
			dest_addr.sin_port = htons(dest_port);

			if(false == _available) return SS_RTPSendSessionUnAvailable;
			
			//if(length != _rtp_session.SendPacketSS(packet, length, &dest_addr)) std::cout << "-";
			
			return SS_NoErr;
		}*/
        
        static SS_Error add_rtp_header(unsigned char* data, const unsigned long& length,
									const unsigned char& payload_type, const bool& mark,
									const unsigned short& sequence, const unsigned long& timestamp, const unsigned long& ssrc);
                                    
        int add_dest_addr(const std::string dest_ip, const unsigned short dest_port);
        int remove_dest_addr(const std::string dest_ip, const unsigned short dest_port);
                                    
        SS_Error send_rtp_packet(const unsigned char* payload, const unsigned long& length, const unsigned char payload_type, const bool mark, const unsigned long timestamp_inc, const unsigned long SSRC);
        
		/*SS_Error send_rtp_packet(const std::vector<std::pair<unsigned long, struct sockaddr_in>>& dest_addr_vec,
			const unsigned char* packet, const unsigned long& length);*/

	private:
		bool _available;
		MyRTPSession _rtp_session;
	};
}

#endif//_JRTP_SESSION_H_