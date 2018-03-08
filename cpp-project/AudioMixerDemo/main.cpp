#include <stdio.h>
#include "AudioMixer.h"

int main(int argc, char **argv)
{
    if(0 != conf_init(30000))//启动服务
    {
        std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        std::cin.get();
        
        conf_uninit();
    }
    
    //start conference/////////
    CID cid = conf_room_new();
        
    conf_room_start(cid);
    
    MID mid1 = conf_room_add_member(cid, 0, 0, 22000, "172.16.24.248");
    MID mid2 = conf_room_add_member(cid, 0, 0, 22010, "172.16.24.248");
    MID mid3 = conf_room_add_member(cid, 0, 0, 22020, "172.16.24.248");
    ///////////////////////////
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;

		input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;

		if("quit" == input_str || "exit" == input_str)
        {
            conf_room_rm(cid);
            break;
        }
        
        if("query" == input_str)
        {
            
            conf_room_show(cid);
        }
	}
    
    conf_uninit();
    
	return 0;
}