// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "iLBCCodec.h"
#include "ilbc_interface.h"

#if 1
	//²ÉÑù¼ä¸ô
	#define ILBC_SAMPLE_INTERVAL	20
	//Ô­Ê¼Ö¡³¤¶È£¨×Ö£©
	#define ILBC_FRAME_LENGTH		160
	//±àÂëºóÖ¡³¤¶È
	#define ILBC_PACKET_LENGTH		38
#else
	//²ÉÑù¼ä¸ô
	#define ILBC_SAMPLE_INTERVAL	30
	//Ô­Ê¼Ö¡³¤¶È£¨×Ö£©
	#define ILBC_FRAME_LENGTH		240
	//±àÂëºóÖ¡³¤¶È
	#define ILBC_PACKET_LENGTH		50
#endif
using namespace ScheduleServer;

CiLBCCodec::CiLBCCodec() :
_encoder(NULL),
_decoder(NULL)
{
	iLBC_EncoderCreate((iLBC_encinst_t**)(&_encoder));
	iLBC_DecoderCreate((iLBC_decinst_t**)(&_decoder));

	iLBC_EncoderInit((iLBC_encinst_t*)_encoder, ILBC_SAMPLE_INTERVAL);
	iLBC_DecoderInit((iLBC_decinst_t*)_decoder, ILBC_SAMPLE_INTERVAL);
}

CiLBCCodec::~CiLBCCodec()
{
	iLBC_EncoderFree((iLBC_encinst_t*)_encoder);
	_encoder = NULL;

	iLBC_DecoderFree((iLBC_decinst_t*)_decoder);
	_decoder = NULL;
}

int CiLBCCodec::encode(short* frame, unsigned char* bits)
{
	if(NULL == _encoder || NULL == frame || NULL == bits)
		return 0;

	int encoded_frame_len = 0;//in bytes

	for(int i = 0; i <3; ++i)
	{
		::memset(_encode_packet, 0, sizeof(_encode_packet));
		short len = iLBC_Encode((iLBC_encinst_t*)_encoder, frame + (i * ILBC_FRAME_LENGTH), ILBC_FRAME_LENGTH, (int8_t*)_encode_packet);
		::memcpy(bits + encoded_frame_len, _encode_packet, len * sizeof(int8_t));
		encoded_frame_len += len;
	}

	encrypt(bits);//AES

	return encoded_frame_len;
}

int CiLBCCodec::decode(unsigned char* bits, short* frame, int crc)
{
	if(NULL == _decoder || NULL == frame || NULL == bits)
		return 0;

	decrypt(bits);//AES

	int decoded_frame_len = 0;//in shorts
	int16_t type = 0;

	for(int i = 0; i < 3; ++i)
	{
		::memset(_decode_frame, 0, sizeof(_decode_frame));

		short len = iLBC_Decode((iLBC_decinst_t*)_decoder, (int8_t*)(bits + (i * ILBC_PACKET_LENGTH)), ILBC_PACKET_LENGTH, (int16_t*)_decode_frame, &type);
		::memcpy(frame + decoded_frame_len, _decode_frame, len * sizeof(int16_t));
		decoded_frame_len += len;
	}

	return decoded_frame_len;
}

int CiLBCCodec::predictive_decode(short* frame, int lost_frame_count)
{
	if(NULL == _decoder || NULL == frame || !lost_frame_count)
		return 0;

	return iLBC_DecodePlc((iLBC_decinst_t*)_decoder, frame, lost_frame_count);
}

int CiLBCCodec::calculate_energy(unsigned char* bits, int len)
{
	return 0;
}
