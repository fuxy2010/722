#include <stdio.h>
#include "AudioMixer.h"

int main(int argc, char **argv)
{
    if(0 != conf_init(30000))//启动服务
    {
        //std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        //std::cin.get();
        
        conf_uninit();
    }
    
    //start conference/////////
    CID cid = conf_room_new();
        
    conf_room_start(cid);
    
    MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "192.168.1.16");
    MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "192.168.1.16");
    MID mid3 = conf_room_add_member(cid, G711, 0, 22020, "192.168.1.16");
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
        
        if(!strcmp("query", cmd))
        {
            
            conf_room_show(cid);
        }
	}
    
    conf_uninit();
    
	return 0;
}