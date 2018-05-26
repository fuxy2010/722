#include <stdlib.h>
#include <stdio.h>
#include "webrtc_vad.h"

#define FrameLength 160
#define BytesPerSample 2
void vad_main()
{
	FILE *inputFile = NULL;
	FILE *outputFile = NULL;

	VadInst *vad_inst = NULL;

	char *inputFile_Path = "C:\\Users\\Jack\\Desktop\\音频文件\\en8000.pcm";
	short inputData[FrameLength];


	int SamplingFreq = 8000;
	int mode = 2;
	int vadIndex = 0;

	inputFile = fopen(inputFile_Path, "rb");

	WebRtcVad_Create(&vad_inst);

	WebRtcVad_Init(vad_inst);
	/*
	*设置静音检测模式，mode可设置为0，1,2,3
	*/
	WebRtcVad_set_mode(vad_inst, mode);

	while(1)
	{
		if (fread(inputData, BytesPerSample, FrameLength, inputFile) != FrameLength)
			break;
		/*
		*返回0为静音信号，返回1为非静音信号
		*SamplingFreq：采样频率
		*FrameLength：输入数据的长度（样点数）
		*/
		vadIndex = WebRtcVad_Process(vad_inst, SamplingFreq, inputData,FrameLength);
		printf("The value of vadIndex is %d\n",vadIndex);
	}
	WebRtcVad_Free(vad_inst);


}