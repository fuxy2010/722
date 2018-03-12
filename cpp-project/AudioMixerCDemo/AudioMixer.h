#ifndef _AUDIO_MIXER_H_
#define _AUDIO_MIXER_H_

#ifdef __cplusplus
extern "C"
{
#endif

typedef unsigned long CID;
typedef unsigned long MID;

typedef enum
{
    G711 = 0,
    GOOGLE
}
CODEC;

//全双工
//1 创建会议室
extern CID conf_room_new();

//2 删除会议室
extern void conf_room_rm(CID cid);

//3 开始会议室混音及rtp收发等处理
extern int conf_room_start(CID cid);

//4 停止会议室混音及rtp收发等处理
extern int conf_room_stop(CID cid);

//5 暂停整个会议室的音频处理，包括其中所有成员
extern int conf_room_hold(CID cid);

//6 恢复整个会议室音频处理
extern int conf_room_recover(CID cid);

//7 添加成员到会议室
extern MID conf_room_add_member(CID cid, CODEC codec, int mode, unsigned short port, char* ip);

//8 删除会议室成员
extern void conf_room_rm_member(MID mid, CID cid);

//9 打开成员的音频发送
extern int conf_enable_member_send(MID mid);

//10 关闭成员的音频发送
extern int conf_disable_member_send(MID mid);

//11 打开成员的音频接收
extern int conf_enable_member_recv(MID mid);

//12 关闭成员的音频接收
extern int conf_disable_member_recv(MID mid);

//13 更新成员编解码及收发模式
extern int conf_update_member_codec(MID mid, CODEC codec, int mode);

//更新成员地址信息
extern int conf_update_member_addr(MID mid, unsigned short port, char* ip);

//16 开始对单个成员播放文件
extern int conf_member_start_fileplay(MID mid, char* fname, int times);

//17 停止对单个成员播放文件
extern int conf_member_stop_fileplay(MID mid);

//18 查看会议室情况
extern void conf_room_show(CID cid);

//19 启动混音模块
extern int conf_init(unsigned short local_port);

//20 停止混音模块
extern int conf_uninit();

//////////////////////////////////////////////////////
//半双工会议
extern int broadcast_start();
extern int broadcast_shutown();
extern int broadcast_add_dest(char* ip, unsigned short port, CODEC codec);
extern int broadcast_remove_dest(char* ip, unsigned short port);

extern int relay_start(unsigned short local_port, char* remote_ip, unsigned short remote_port);
extern int relay_shutown();
extern int relay_add_dest(char* ip, unsigned short port, CODEC codec);
extern int relay_remove_dest(char* ip, unsigned short port);

//////////////////////////////////////////////////////

//本地播放指定会议室音频
//cid为0则停止播放所有会议室音频
extern int conf_play(CID cid);

#ifdef __cplusplus
}// extern "C"
#endif

#endif //_AUDIO_MIXER_H_
