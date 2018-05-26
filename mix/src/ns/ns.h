// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2013-01 ~ 2014-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _NS_INSTANCE_H_
#define _NS_INSTANCE_H_

#include <stdlib.h>
#include <stdio.h>

namespace NS
{
	#include "noise_suppression.h"
    #include "ns_core.h"
    
	class CNS
	{
	public:
		CNS() : NS_inst(NULL)
		{
			start_ns();
		}

		virtual ~CNS()
		{
			shutdown_ns();
		}

		bool ns(short* in_frame, short* out_frame)
		{
            if(NULL == NS_inst) return false;
            
            if(!WebRtcNs_Process(NS_inst, in_frame, NULL, out_frame, NULL)) return true;
            
            return false;
		}
	
    private:
        NsHandle* NS_inst;
        
    private:
        int start_ns()
        {
            uint32_t samplingRate = 8000;
            short bitsPerSample = 16;
            short numOfChannels = 1;
            //NS_mode:	0--mild	1--medium	2--aggressive
            int NS_mode = 2;

            //噪声抑制接口运行返回值
            int ret_create = 0;
            int ret_init = 0;
            int ret_policy = 0;
            int ret_process = 0;

            //*NS_inst = NULL;
            //噪声抑制创建
            ret_create = WebRtcNs_Create(&NS_inst);
            if(ret_create == -1)
            {
                printf("NS module create error\n");
                return -1;
            }
            //初始化
            ret_init = WebRtcNs_Init(NS_inst, samplingRate);
            if(ret_init == -1)
            {
                printf("NS module init error\n");
                return -2;
            }
            //设置噪声抑制等级参数
            ret_policy = WebRtcNs_set_policy(NS_inst, NS_mode);
            if(ret_policy == -1)
            {
                printf("NS module set policy error\n");
                return -3;
            }
            
            return 0;
        }

        int shutdown_ns()
        {
            int ret_free = WebRtcNs_Free(NS_inst);
            if(ret_free != -1)
            {
                printf("NS Free module error\n");
                return -1;
            }
            
            return 0;
        }
	};
}

#endif//_NS_INSTANCE_H_      
