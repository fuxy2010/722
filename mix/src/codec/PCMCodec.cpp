// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "PCMCodec.h"

using namespace ScheduleServer;

CPCMCodec::CPCMCodec()
{
	//_encoder = create_pcm_enc();
	//_decoder = create_pcm_dec();
}

CPCMCodec::~CPCMCodec()
{
	//destroy_pcm_enc(_encoder);
	//destroy_pcm_dec(_decoder);
}

int CPCMCodec::encode(short* frame, unsigned char* bits)
{
	CSSLocker lock(&_encode_mutext);

	memcpy(bits,frame,PKT_SAMPLE_NUM*sizeof(short));

	encrypt(bits);//AES

	return PKT_SAMPLE_NUM*sizeof(short);
}

int CPCMCodec::decode(unsigned char* bits, short* frame, int crc)
{
	CSSLocker lock(&_decode_mutext);

	decrypt(bits);//AES

	memcpy(frame,bits,PKT_SAMPLE_NUM*sizeof(short));

	return PKT_SAMPLE_NUM*sizeof(short);
}

#define L_FRAME		160		//short，AMR-NB语音帧长度
#define L_MAX_FRAME_BYTE	13	//AMR-NB无静音压缩一帧长度最大13字节，启动静音则小于13字节

int calc_audio_enr(short *data,int len)
{
	int i;
	double sum=0;

	for(i=0;i<len;i++)
		sum+=data[i]*data[i];

	return (int)(sum/len);
}

int CPCMCodec::calculate_energy(unsigned char* bits, int len)
{
	int sum=0;
	int avg;
	short  *frmdata=(short*)bits;


	avg=calc_audio_enr(frmdata,L_FRAME*PKT_FRAME_NUM);
	

	return avg;
}
