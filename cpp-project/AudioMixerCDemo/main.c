#include <stdio.h>
#include "AudioMixer.h"

int main(int argc, char **argv)
{
    if(0 != conf_init(30000))//启动服务
    {
        //std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        //std::cin.get();
        getchar();
        
        conf_uninit();
    }
    
    //start conference/////////
    CID cid = conf_room_new();
        
    conf_room_start(cid);
    
    MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "192.168.3.80");
    MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "192.168.3.80");
    MID mid3 = conf_room_add_member(cid, G711, 0, 22020, "192.168.3.80");
    MID mid5 = conf_room_add_member(cid, G711, 0, 22030, "192.168.3.80");
    ///////////////////////////
    
    char cmd[32];
	while(1)
	{
        scanf("%s", cmd);

        if(!strcmp("quit", cmd) || !strcmp("exit", cmd))
        {
            conf_room_rm(cid);
            break;
        }
        else if(!strcmp("query", cmd))
        {
            conf_room_show(cid);
        }
        else if("rm" == cmd)
        {
            conf_room_rm_member(mid1, cid);
        }
        else if("update" == cmd)
        {
            conf_update_member_addr(mid1, 22020, "192.168.3.80");
        }
        else if("dis" == cmd)
        {
            conf_disable_member_recv(mid1);
            conf_disable_member_recv(mid2);
        }
        else if("enable" == cmd)
        {
            conf_enable_member_recv(mid1);
            conf_enable_member_recv(mid2);
        }        
        else if("play" == cmd)
        {
            conf_play(cid);
        }
	}
    
    conf_uninit();
    
	return 0;
}