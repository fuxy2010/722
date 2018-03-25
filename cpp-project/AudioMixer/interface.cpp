#include "ScheduleServer.h"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>

#ifndef __cplusplus
#define __cplusplus
#endif

#include "AudioMixer.h"

using namespace ScheduleServer;

//1 创建会议室
CID conf_room_new()
{
    CID id = 0;
    
    if(SS_NoErr != SINGLETON(CScheduleServer).add_conference(id)) id = -1;
    
    return id;
}

CID conf_room_new_broadcast()
{
    CID id = 0;
    
    if(SS_NoErr != SINGLETON(CScheduleServer).add_broadcast_conference(id)) id = -1;
    else conf_add_self(id);
    
    return id;
}

//2 删除会议室
void conf_room_rm(CID cid)
{
    SINGLETON(CScheduleServer).close_conference(cid);
}

//3 开始会议室混音及rtp收发等处理
int conf_room_start(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).resume_conference(cid)) return -1;
    
    return 0;
}

//4 停止会议室混音及rtp收发等处理
int conf_room_stop(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).pause_conference(cid)) return -1;
    
    return 0;
}

//5 暂停整个会议室的音频处理，包括其中所有成员
int conf_room_hold(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).pause_conference(cid)) return -1;
    
    return 0;
}

//6 恢复整个会议室音频处理
int conf_room_recover(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).resume_conference(cid)) return -1;
    
    return 0;
}

//7 添加成员到会议室
MID conf_room_add_member(CID cid, CODEC codec, int mode, unsigned short port, char* ip)
{
    MID mid;
    
    if(SS_NoErr != SINGLETON(CScheduleServer).add_paiticipant(mid, cid, ip, port, codec, Speaker)) return -1;
    
    return mid;
}

MID conf_room_add_audience(CID cid, CODEC codec, int mode, unsigned short port, char* ip)
{
    MID mid;
    
    if(SS_NoErr != SINGLETON(CScheduleServer).add_paiticipant(mid, cid, ip, port, codec, Audience)) return -1;
    
    return mid;
}

//8 删除会议室成员
void conf_room_rm_member(MID mid, CID cid)
{
    SINGLETON(CScheduleServer).remove_paiticipant(cid, mid);
}

void conf_room_rm_audience(MID mid, CID cid)
{
    SINGLETON(CScheduleServer).remove_paiticipant(cid, mid);
}

//9 打开成员的音频发送
int conf_enable_member_send(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL == ua) return -1;
    
    ua->resume_send();
    
    return 0;
}

//10 关闭成员的音频发送
int conf_disable_member_send(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL == ua) return -1;
    
    ua->pause_send();
    
    return 0;
}

//11 打开成员的音频接收
int conf_enable_member_recv(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL == ua) return -1;
    
    ua->resume_recv();
    
    return 0;
}

//12 关闭成员的音频接收
int conf_disable_member_recv(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL == ua) return -1;
    
    ua->pause_recv();
    
    return 0;
}

//13 更新成员编解码及收发模式
int conf_update_member_codec(MID mid, CODEC codec, int mode)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL == ua) return -1;
    
    ua->update_codec(codec);
    ua->update_mode(mode);
    
    return 0;
}

int conf_update_member_addr(MID mid, unsigned short port, char* ip)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).reg_ua(mid, ip, port, 0)) return -1;
    return 0;
}

//16 开始对单个成员播放文件
int conf_member_start_fileplay(MID mid, char* fname, int times)
{
    return 0;
}

//17 停止对单个成员播放文件
int conf_member_stop_fileplay(MID mid)
{
    return 0;
}

//18 查看会议室情况
void conf_room_show(CID cid)
{
    SINGLETON(CScheduleServer).query_conference(cid);
}

//本地播放指定会议室音频
int conf_play(CID cid)
{
    SINGLETON(CScheduleServer).play_conference(cid);
}

int conf_add_self(CID cid)
{
    SINGLETON(CScheduleServer).add_self(cid);
}

//19 启动混音模块
int conf_init(unsigned short local_port)
{
    //if(SS_NoErr != SINGLETON(CScheduleServer).start()) return -1;
    if(SS_NoErr != SINGLETON(CScheduleServer).start_mixer(local_port)) return -1;
    
    return 0;
}

//20 停止混音模块
int conf_uninit()
{
    SINGLETON(CScheduleServer).shutdown_mixer();
    
    return 0;
}

int broadcast_start()
{
    if(SS_NoErr != SINGLETON(CScheduleServer).start_broadcast()) return -1;
    
    return 0;
}

int broadcast_shutown()
{
    SINGLETON(CScheduleServer).shutdown_broadcast();
    
    return 0;
}

int broadcast_add_dest(char* ip, unsigned short port, CODEC codec)
{
    SINGLETON(CScheduleServer).add_broadcast_receiver(ip, port, codec);
    
    return 0;
}

int broadcast_remove_dest(char* ip, unsigned short port)
{
    return 0;
}
