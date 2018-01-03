#include "ilbc.h"
#include "ilbc_interface.h"

int16_t iLBC_EncoderCreate(iLBC_encinst_t **iLBC_encinst)
{
	return WebRtcIlbcfix_EncoderCreate(iLBC_encinst);
}
int16_t iLBC_DecoderCreate(iLBC_decinst_t **iLBCdec_inst)
{
	return WebRtcIlbcfix_DecoderCreate(iLBCdec_inst);
}

int16_t iLBC_EncoderInit(iLBC_encinst_t *iLBC_encinst, int16_t processMode)
{
	return WebRtcIlbcfix_EncoderInit(iLBC_encinst, processMode);
}

int16_t iLBC_DecoderInit(iLBC_decinst_t *iLBCdec_inst, int16_t processMode)
{
	return WebRtcIlbcfix_DecoderInit(iLBCdec_inst, processMode);
}


int16_t iLBC_Encode(iLBC_encinst_t *iLBCenc_inst,
                               const int16_t *speechIn,
                               int16_t numOfSamples,
                               int8_t *encoded)
{
	return WebRtcIlbcfix_Encode(iLBCenc_inst,speechIn,numOfSamples, (int16_t*)encoded);
}

int16_t iLBC_Decode(iLBC_decinst_t *iLBCdec_inst,
                               const int8_t* encoded,
                               int16_t lenInBytes,
                               int16_t *decoded,
                               int16_t *speechType)
{
	return WebRtcIlbcfix_Decode(iLBCdec_inst, (const int16_t*)encoded, lenInBytes, decoded, speechType);
}

int16_t iLBC_DecodePlc(iLBC_decinst_t *iLBCdec_inst,
                                  int16_t *decoded,
                                  int16_t noOfLostFrames)
{
	return WebRtcIlbcfix_DecodePlc(iLBCdec_inst,decoded,noOfLostFrames);
}

int16_t iLBC_EncoderFree(iLBC_encinst_t *iLBC_encinst)
{
	return WebRtcIlbcfix_EncoderFree(iLBC_encinst);
}

int16_t iLBC_DecoderFree(iLBC_decinst_t *iLBC_decinst)
{
	return WebRtcIlbcfix_DecoderFree(iLBC_decinst);
}