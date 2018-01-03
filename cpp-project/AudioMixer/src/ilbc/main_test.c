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


	//�ļ�·��
	char *inputFilePath_Encoder = NULL, *outputFilePath_Encoder = NULL;
	char *outputFilePath_Decoder = NULL;
	char *frameLoseFilePath = NULL;

	/*
	*���ݴ洢����
	*/
	int16_t data[BLOCKL_MAX];
	int16_t encoded_data[ILBCNOOFWORDS_MAX], decoded_data[BLOCKL_MAX];

	//��������
	short processMode;
	short frameLength;
	short outputLength;
	int16_t speechType;

	//ģ��֡��ʧ����
	short isFrameLoseOpen;

	//��ȡ��ģ��֡��ʧ����
	int16_t index_frameLose;

	iLBC_encinst_t *Enc_Inst = NULL;
    iLBC_decinst_t *Dec_Inst = NULL;

	//���ݳ�ʼ��
	processMode = 20;
	isFrameLoseOpen = 1;

	inputFilePath_Encoder = "C:\\Users\\Jack\\Desktop\\avs����\\en001-16000-mono-16bit.pcm";
	outputFilePath_Encoder = "C:\\Users\\Jack\\Desktop\\avs����\\iLBC_Encoded.ilbc";
	outputFilePath_Decoder = "C:\\Users\\Jack\\Desktop\\avs����\\iLBC_Decoded.pcm";
	frameLoseFilePath = "C:\\Users\\Jack\\Desktop\\avs����\\iLBCFrameLose.pcm";


	//�ļ���д����
	inputFile_Encoder = fopen(inputFilePath_Encoder, "rb");
	outputFile_Encoder = fopen(outputFilePath_Encoder, "wb");
	outputFile_Decoder = fopen(outputFilePath_Decoder , "wb");
	frameLoseFile = fopen(frameLoseFilePath, "rb");

	//֡������
	frameLength = processMode * 8;

	//�������������ؽṹ��
    iLBC_EncoderCreate(&Enc_Inst);
	iLBC_DecoderCreate(&Dec_Inst);

	iLBC_EncoderInit(Enc_Inst, processMode);
	iLBC_DecoderInit(Dec_Inst, processMode);


	while (fread(data, sizeof(int16_t),frameLength, inputFile_Encoder) == frameLength)
	{
		//���б���
		outputLength = iLBC_Encode(Enc_Inst, data, (int16_t)frameLength, encoded_data);
		
		//�����������ݴ洢���ļ���
		if (fwrite(encoded_data, sizeof(int16_t), (outputLength + 1)/sizeof(int16_t),
			outputFile_Encoder) != (outputLength + 1)/sizeof(int16_t))
			return;
		
		//�ж��Ƿ���֡��ʧģ��
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
		 *���н������
		 */
		//��ǰ֡û�ж�ʧ
		if (index_frameLose == 1)
		{
			printf("This frame exist\n");
			outputLength = iLBC_Decode(Dec_Inst, encoded_data,	
                               (int16_t)outputLength, decoded_data,&speechType);
		}
		else //��ǰ֡��ʧ
		{
			printf("This frame lose\n");
			fflush(stdout);
			outputLength = iLBC_DecodePlc(Dec_Inst, decoded_data, 1);
		}
		//�����������ݴ洢���ļ���
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