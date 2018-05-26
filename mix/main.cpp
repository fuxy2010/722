/*#include "rtpsession.h"
#include "rtppacket.h"
#include "rtpudpv4transmitter.h"
#include "rtpipv4address.h"
#include "rtpsessionparams.h"
#include "rtperrors.h"
#include "rtpsourcedata.h"
#include "jthread.h"
#include "ScheduleServer.h"*/
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>

/*#ifndef __cplusplus
#define __cplusplus
#endif*/

#include "AudioMixer.h"

#include "jthread.h"
#include "MediaData.h"
#include "Locker.h"
#include <iostream>
#include <unistd.h>

void conference()
{
    //if(0 != conf_init(30000))//启动服务
    if(0 != conf_init())//启动服务
    {
        std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        std::cin.get();
        
        conf_uninit();
    }
    
    //start conference/////////
    CID cid = 0;
#if 1
    cid = conf_room_new();
    //cid = conf_room_new_broadcast();
        
    conf_room_start(cid);
    
    //MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "172.16.27.19", 32000);
    //MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "172.16.27.19", 32010);
    //MID mid3 = 0;//conf_room_add_member(cid, G711, 0, 22020, "172.16.27.19", 32020);
    
    MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "192.168.3.80", 32000);
    MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "192.168.3.80", 32010);
    MID mid3 = 0;//conf_room_add_member(cid, G711, 0, 22020, "192.168.3.80", 32020);
    
    //MID mid5 = conf_room_add_member(cid, G711, 0, 22030, "192.168.3.63", 32030);
    
    //MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "10.10.10.6", 32000);
    //MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "10.10.10.6", 32010);
    //MID mid3 = conf_room_add_member(cid, G711, 0, 22020, "10.10.10.6", 32020);
#endif
    ///////////////////////////
    
     conf_room_show(cid);
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;
        
        input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;

		if("quit" == input_str || "exit" == input_str)
        {
            //conf_room_rm(cid);
            conf_uninit();
            //break;
        }        
        else if("query" == input_str)
        {
            conf_room_show(cid);
        }
        else if("r" == input_str)
        {
            conf_room_rm_member(mid3, cid);
        }
        else if("a" == input_str)
        {
            //MID mid5 = conf_room_add_member(cid, G711, 0, 22030, "192.168.3.63", 32030);
            //mid3 = conf_room_add_member(cid, G711, 0, 22020, "172.16.27.19", 32020);
            mid3 = conf_room_add_member(cid, G711, 0, 22020, "192.168.3.80", 32020);
        }
        else if("u" == input_str)
        {
            conf_update_member_addr(mid1, 22020, "192.168.3.80");
        }
        else if("d" == input_str)
        {
            conf_disable_member_recv(mid1);
            //conf_disable_member_recv(mid2);
        }
        else if("e" == input_str)
        {
            //conf_enable_member_recv(mid1);
            //conf_enable_member_recv(mid2);
        }        
        else if("p" == input_str)
        {
            conf_play(cid);
        }
        else if("as" == input_str)
        {
            conf_add_self(cid);
        }
        else if("rs" == input_str)
        {
            conf_add_self(0);
        }
        else if("wp" == input_str)
        {
            conf_member_start_fileplay(mid1, "../hello8000.wav", 3);
        }
        else if("wc" == input_str)
        {
            conf_member_stop_fileplay(mid1);
        }
        else if("lp" == input_str)
        {
            local_start_fileplay("../hello8000.wav", 3);
        }
        else if("lc" == input_str)
        {
            local_stop_fileplay();
        }
        
        conf_room_show(cid);
	}
    
    conf_uninit();
}

void multi_conferences()
{
    //if(0 != conf_init(30000))//启动服务
    if(0 != conf_init())//启动服务
    {
        std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        std::cin.get();
        
        conf_uninit();
    }
    
    //start conference/////////
    CID cid1 = 0;
    CID cid2 = 0;
#if 1
    cid1 = conf_room_new();
    cid2 = conf_room_new_broadcast();
        
    conf_room_start(cid1);
    conf_room_start(cid2);
    
    //MID mid1 = conf_room_add_member(cid1, G711, 0, 22000, "172.16.26.100");
    //MID mid2 = conf_room_add_member(cid2, G711, 0, 22010, "172.16.26.100");
    //MID mid3 = conf_room_add_member(cid2, G711, 0, 22020, "172.16.26.100");
    
    MID mid1 = conf_room_add_member(cid1, G711, 0, 22000, "192.168.3.80", 32000);
    MID mid2 = conf_room_add_member(cid2, G711, 0, 22010, "192.168.3.80", 32010);
    MID mid3 = conf_room_add_member(cid2, G711, 0, 22020, "192.168.3.80", 32020);
    
    //MID mid1 = conf_room_add_member(cid1, G711, 0, 22000, "192.168.1.16");
    //MID mid2 = conf_room_add_member(cid2, G711, 0, 22010, "192.168.1.16");
    //MID mid3 = conf_room_add_member(cid2, G711, 0, 22020, "192.168.1.16");
#endif
    ///////////////////////////
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;
        
        input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;
        
        if("query" == input_str)
        {
            conf_room_show(cid1);
            conf_room_show(cid2);
        }
		else if("p" == input_str)
        {
            conf_play(cid1);
            conf_play(cid2);
        }
        else if("as" == input_str)
        {
            conf_add_self(cid1);
        }
        else if("rs" == input_str)
        {
            conf_add_self(0);
        }
	}
    
    conf_uninit();
}

/*void broadcast()
{
    if(0 != broadcast_start())//启动服务
    {
        std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        std::cin.get();
        
        broadcast_shutown();
    }
    
    broadcast_add_dest("192.168.3.80", 22000, G711);
    broadcast_add_dest("192.168.3.80", 22010, G711);
    broadcast_add_dest("192.168.3.80", 22020, G711);
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;
        
        input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;

		if("quit" == input_str || "exit" == input_str)
        {
            broadcast_shutown();
            break;
        }
	}
    
    broadcast_shutown();
}*/

void p2p()
{
    p2p_init("127.0.0.1", 30000, 30000);
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;
        
        input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;

		if("quit" == input_str || "exit" == input_str)
        {
            break;
        }
	}
    
    p2p_uninit();
}

#include "UserAgent.h"
#include "PCMPlayer.h"
void wav()
{
    FILE *fp = NULL;
    
    struct ScheduleServer::WAV_Format wav;
    
    fp = fopen("../hello8000.wav", "rb");
    
    if(NULL == fp)
    {
        printf("can't open audio file\n");
        exit(1);
    }
    
    fread(&wav, sizeof(struct ScheduleServer::WAV_Format), 1, fp);
    
    printf("ChunkID \t%x\n", wav.ChunkID);
    printf("ChunkSize \t%d\n", wav.ChunkSize);
    printf("Format \t\t%x\n", wav.Format);
    printf("Subchunk1ID \t%x\n", wav.Subchunk1ID);
    printf("Subchunk1Size \t%d\n", wav.Subchunk1Size);
    printf("AudioFormat \t%d\n", wav.AudioFormat);
    printf("NumChannels \t%d\n", wav.NumChannels);
    printf("SampleRate \t%d\n", wav.SampleRate);
    printf("ByteRate \t%d\n", wav.ByteRate);
    printf("BlockAlign \t%d\n", wav.BlockAlign);
    printf("BitsPerSample \t%d\n", wav.BitsPerSample);
    printf("Subchunk2ID \t%x\n", wav.Subchunk2ID);  
    printf("Subchunk2Size \t%d\n", wav.Subchunk2Size);
    
    ScheduleServer::CPCMPlayer pcm_player;
    
    unsigned char frame[320];
    
    while(true)
    {
        int ret = fread(frame, sizeof(unsigned char), 320, fp);
        
        if(ret  != 320) break;
        
        pcm_player.play(frame);
    }
    
    fclose(fp);
}

#ifdef NDEBUG
int main3(int argc, char **argv)
#else
int main(int argc, char **argv)
#endif
{
    //alsa_check();
    
    //wav();
    
    conference();
    //broadcast();
    //multi_conferences();
    
    //p2p();
    
	return 0;
}