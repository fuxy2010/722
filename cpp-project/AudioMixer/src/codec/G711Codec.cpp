// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "G711Codec.h"

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

CG711Codec::CG711Codec()// :
//_encoder(NULL),
//_decoder(NULL)
{
}

CG711Codec::~CG711Codec()
{
	
}

int CG711Codec::encode(short* frame, unsigned char* bits)
{
	//if(NULL == _encoder || NULL == frame || NULL == bits)
    if(NULL == frame || NULL == bits)
		return 0;

	int encoded_frame_len = 480;//60ms/frame
    
    ::memset(bits, 0, sizeof(unsigned char) * encoded_frame_len);

	for(int i = 0; i < encoded_frame_len; ++i)
	{
        bits[i] = g711_encode(frame[i]);
	}

	//encrypt(bits);//AES

	return encoded_frame_len;
}

int CG711Codec::decode(unsigned char* bits, short* frame, int crc)
{
	//if(NULL == _decoder || NULL == frame || NULL == bits)
    if(NULL == frame || NULL == bits)
		return 0;
        
        
    int decoded_frame_len = 480;//60ms/frame
    
    ::memset(frame, 0, sizeof(short) * decoded_frame_len);
    
    for(int i = 0; i < decoded_frame_len; ++i)
	{
        frame[i] = g711_decode(bits[i]);
	}
    
    //decrypt(bits);//AES

	return decoded_frame_len;
}

int CG711Codec::calculate_energy(unsigned char* bits, int len)
{
	return 0;
}

#define MAX (32635)    
unsigned char CG711Codec::g711_encode(short pcm)
{
    int sign = (pcm & 0x8000) >> 8;
    
    if(sign != 0) pcm = -pcm;//最高位，符号位
    if(pcm > MAX) pcm = MAX;//max=32635
    
    int exponent = 7;    
    int expMask;    
    for(expMask = 0x4000; (pcm & expMask) == 0//bit14->14-7，找到高字节中第一个不为0的位
                        && exponent>0;
                        exponent--, expMask >>= 1)
    {
    }
    
    int mantissa = (pcm >> ((exponent == 0) ? 4 : (exponent + 3))) & 0x0f;
    unsigned char alaw = (unsigned char)(sign | exponent << 4 | mantissa);
    
    return (unsigned char)(alaw^0xD5);  //11010101  
}

short CG711Codec::g711_decode(unsigned char alaw)
{
    alaw ^= 0xD5;
    
    int sign = alaw & 0x80;
    int exponent = (alaw & 0x70) >> 4;
    int data = alaw & 0x0f;
    
    data <<= 4;
    data += 8;
    
    if(exponent != 0) data += 0x100;
    if(exponent > 1) data <<= (exponent - 1);
    
    return (short)(sign == 0 ? data : -data);    
}    
