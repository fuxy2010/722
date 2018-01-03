#include <stdio.h>
#include <stdlib.h>
#include "ilbc_interface.h"

#define BLOCKL_MAX			240
#define ILBCNOOFWORDS_MAX	25

void main_test()
{
	FILE *inputFile_Encoder = NULL, *outputFile_Encoder = NULL;
	FILE *outputFile_Decoder = NULL;
	FILE *frameLoseFile = NULL;


	//文件路径
	char *inputFilePath_Encoder = NULL, *outputFilePath_Encoder = NULL;
	char *outputFilePath_Decoder = NULL;
	char *frameLoseFilePath = NULL;

	/*
	*数据存储数组
	*/
	int16_t data[BLOCKL_MAX];
	int16_t encoded_data[ILBCNOOFWORDS_MAX], decoded_data[BLOCKL_MAX];

	//参数设置
	short processMode;
	short frameLength;
	short outputLength;
	int16_t speechType;

	//模拟帧丢失开关
	short isFrameLoseOpen;

	//读取的模拟帧丢失参数
	int16_t index_frameLose;

	iLBC_encinst_t *Enc_Inst = NULL;
    iLBC_decinst_t *Dec_Inst = NULL;

	//数据初始化
	processMode = 20;
	isFrameLoseOpen = 1;

	inputFilePath_Encoder = "C:\\Users\\Jack\\Desktop\\avs语音\\en001-16000-mono-16bit.pcm";
	outputFilePath_Encoder = "C:\\Users\\Jack\\Desktop\\avs语音\\iLBC_Encoded.ilbc";
	outputFilePath_Decoder = "C:\\Users\\Jack\\Desktop\\avs语音\\iLBC_Decoded.pcm";
	frameLoseFilePath = "C:\\Users\\Jack\\Desktop\\avs语音\\iLBCFrameLose.pcm";


	//文件读写操作
	inputFile_Encoder = fopen(inputFilePath_Encoder, "rb");
	outputFile_Encoder = fopen(outputFilePath_Encoder, "wb");
	outputFile_Decoder = fopen(outputFilePath_Decoder , "wb");
	frameLoseFile = fopen(frameLoseFilePath, "rb");

	//帧长计算
	frameLength = processMode * 8;

	//创建编解码器相关结构体
    iLBC_EncoderCreate(&Enc_Inst);
	iLBC_DecoderCreate(&Dec_Inst);

	iLBC_EncoderInit(Enc_Inst, processMode);
	iLBC_DecoderInit(Dec_Inst, processMode);


	while (fread(data, sizeof(int16_t),frameLength, inputFile_Encoder) == frameLength)
	{
		//进行编码
		outputLength = iLBC_Encode(Enc_Inst, data, (int16_t)frameLength, encoded_data);
		
		//将编码后的数据存储到文件中
		if (fwrite(encoded_data, sizeof(int16_t), (outputLength + 1)/sizeof(int16_t),
			outputFile_Encoder) != (outputLength + 1)/sizeof(int16_t))
			return;
		
		//判断是否开启帧丢失模拟
		if(isFrameLoseOpen)
		{
			if (fread(&index_frameLose, sizeof(int16_t),1, frameLoseFile))  
			{
				if (index_frameLose > 0)
					index_frameLose = 1;
				else
					index_frameLose = 0;
				if((index_frameLose != 0) && (index_frameLose != 1))
					printf("Frame Lose index error\n");
				else if (index_frameLose == 0)
				{
					memset(encoded_data, 0, sizeof(int16_t)*ILBCNOOFWORDS_MAX);
				}
			}
			else 
			{
				printf("Error,channle file too short\n");
				return;
			}
		}
		else
		{
			index_frameLose = 1;
		}

		/*
		 *进行解码操作
		 */
		//当前帧没有丢失
		if (index_frameLose == 1)
		{
			printf("This frame exist\n");
			outputLength = iLBC_Decode(Dec_Inst, encoded_data,	
                               (int16_t)outputLength, decoded_data,&speechType);
		}
		else //当前帧丢失
		{
			printf("This frame lose\n");
			fflush(stdout);
			outputLength = iLBC_DecodePlc(Dec_Inst, decoded_data, 1);
		}
		//将解码后的数据存储到文件中
		fwrite(decoded_data, sizeof(int16_t), outputLength, outputFile_Decoder);

	}

	fclose(outputFile_Decoder);
	fclose(outputFile_Encoder);
	fclose(inputFile_Encoder);
	if (isFrameLoseOpen == 1)
		fclose(frameLoseFile);

	iLBC_EncoderFree(Enc_Inst);
	iLBC_DecoderFree(Dec_Inst);

	printf("Done with simulation\n");

	return;
}