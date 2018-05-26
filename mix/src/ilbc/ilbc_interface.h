#ifndef ILBC_INTERFACE_H
#define ILBC_INTERFACE_H

#ifdef __cplusplus
extern "C"
{
#endif

#include "ilbc.h"

int16_t iLBC_EncoderCreate(iLBC_encinst_t **iLBC_encinst);
int16_t iLBC_DecoderCreate(iLBC_decinst_t **iLBCdec_inst);

/*
*���ڴ�������ݵĳ��ȿ���Ϊ20ms����30ms���˴���
*processMode����������Ϊ20����30���Ӷ���������
*�����ȵ�ѡ��
*/
int16_t iLBC_EncoderInit(iLBC_encinst_t *iLBC_encinst, int16_t processMode);
int16_t iLBC_DecoderInit(iLBC_decinst_t *iLBCdec_inst, int16_t processMode);

/*
*���봦���������в���numOfSamplesΪ��ȡ��������������Ϊ16λ����
*����������ֵΪ���������ݳ��ȣ�in bytes��
*/
int16_t iLBC_Encode(iLBC_encinst_t *iLBCenc_inst,
                               const int16_t *speechIn,
                               int16_t numOfSamples,
                               int8_t *encoded);

/*
*���봦�������������еĲ���lenInBytesΪ��Ӧ����
*������ݳ��ȣ�in bytes������Ϊ���뺯���ķ���ֵ��
*speechTypeΪ���ֵ������Ķ�Ӧ���Ϊ: 1 normal, 2 CNG
*�������ķ���ֵΪ���������ݵ����������ע������Ϊ16λ����
*/
int16_t iLBC_Decode(iLBC_decinst_t *iLBCdec_inst,
                               const int8_t* encoded,
                               int16_t lenInBytes,
                               int16_t *decoded,
                               int16_t *speechType);

/*
*����Ԥ����봦����������Ӧ�ı������ݶ�ʧʱ��ʹ�øú�����
*����ֵΪ�����������������
*noOfLostFramesΪ��ʧ��֡�ĸ�����ʵ�����ʱ��ֵ����Ϊ1
*/
int16_t iLBC_DecodePlc(iLBC_decinst_t *iLBCdec_inst,
                                  int16_t *decoded,
                                  int16_t noOfLostFrames);

int16_t iLBC_EncoderFree(iLBC_encinst_t *iLBC_encinst);
int16_t iLBC_DecoderFree(iLBC_decinst_t *iLBC_decinst);

#ifdef __cplusplus
}
#endif

#endif