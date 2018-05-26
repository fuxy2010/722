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

	char *inputFile_Path = "C:\\Users\\Jack\\Desktop\\��Ƶ�ļ�\\en8000.pcm";
	short inputData[FrameLength];


	int SamplingFreq = 8000;
	int mode = 2;
	int vadIndex = 0;

	inputFile = fopen(inputFile_Path, "rb");

	WebRtcVad_Create(&vad_inst);

	WebRtcVad_Init(vad_inst);
	/*
	*���þ������ģʽ��mode������Ϊ0��1,2,3
	*/
	WebRtcVad_set_mode(vad_inst, mode);

	while(1)
	{
		if (fread(inputData, BytesPerSample, FrameLength, inputFile) != FrameLength)
			break;
		/*
		*����0Ϊ�����źţ�����1Ϊ�Ǿ����ź�
		*SamplingFreq������Ƶ��
		*FrameLength���������ݵĳ��ȣ���������
		*/
		vadIndex = WebRtcVad_Process(vad_inst, SamplingFreq, inputData,FrameLength);
		printf("The value of vadIndex is %d\n",vadIndex);
	}
	WebRtcVad_Free(vad_inst);


}