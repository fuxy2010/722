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
*由于处理的数据的长度可以为20ms或者30ms，此处的
*processMode参数可设置为20或者30，从而进行数据
*处理长度的选择
*/
int16_t iLBC_EncoderInit(iLBC_encinst_t *iLBC_encinst, int16_t processMode);
int16_t iLBC_DecoderInit(iLBC_decinst_t *iLBCdec_inst, int16_t processMode);

/*
*编码处理函数，其中参数numOfSamples为读取的样点数（样点为16位）。
*本函数返回值为处理后的数据长度（in bytes）
*/
int16_t iLBC_Encode(iLBC_encinst_t *iLBCenc_inst,
                               const int16_t *speechIn,
                               int16_t numOfSamples,
                               int8_t *encoded);

/*
*解码处理函数，本函数中的参数lenInBytes为对应编码
*后的数据长度（in bytes），即为编码函数的返回值。
*speechType为输出值，输出的对应情况为: 1 normal, 2 CNG
*本函数的返回值为解码后的数据的样点个数（注：样点为16位）。
*/
int16_t iLBC_Decode(iLBC_decinst_t *iLBCdec_inst,
                               const int8_t* encoded,
                               int16_t lenInBytes,
                               int16_t *decoded,
                               int16_t *speechType);

/*
*线性预测解码处理函数，当对应的编码数据丢失时，使用该函数。
*返回值为处理后的数据样点个数
*noOfLostFrames为丢失的帧的个数，实验测试时该值设置为1
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