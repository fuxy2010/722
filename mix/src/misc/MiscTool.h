// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _MISC_TOOL_H_
#define _MISC_TOOL_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include <string.h>
#include <stdlib.h>
#include <vector>
#include <map>
#include <iostream>
#include <sstream>
#include <algorithm>
#include <sys/stat.h>
#include <time.h>
#include <math.h>
#include <iomanip>
#include <arpa/inet.h>

//³£ÓÃ¹¤¾ß
namespace MiscTools
{
	//×Ö·û´®²Ù×÷
	//É¾³ý×Ö·û´®×ó±ß¿Õ°×
	std::string trim_string_left(const std::string& str);

	//É¾³ý×Ö·û´®ÓÒ±ß¿Õ°×
	std::string trim_string_right(const std::string& str);

	//É¾³ý×Ö·û´®×óÓÒÁ½±ß¿Õ°×
	std::string trim_string(const std::string& str);

	//½«×Ö·û´®×ª»»ÎªÐ¡Ð´
	std::string string_to_lower(const std::string& str);

	//½«×Ö·û´®×ª»»Îª´óÐ´
	std::string string_to_upper(const std::string& str);

	//×Ö·û´®strÊÇ·ñÒÔsubstr¿ªÍ·
	bool is_string_start_with(const std::string& str, const std::string& substr);

	//×Ö·û´®strÊÇ·ñÒÔsubstr¿ªÍ·
	bool is_string_end_with(const std::string& str, const std::string& substr);

	//ºöÂÔ´óÐ¡Ð´±È½Ï×Ö·û´®
	bool compare_string_ignore_case(const std::string& str1, const std::string& str2);

	//½«Ê±¼ä×ª»¯ÎªÐÎÈç2010-01-01 12:30:30µÄ×Ö·û´®
	std::string parse_time_to_string(const struct tm& time);

	//½«ÃëÊý×ª»¯ÎªÐÎÈç2010-03-17 16:45:00µÄ×Ö·û´®
	std::string parse_time_to_string(const time_t seconds);

	//½«µ±Ç°Ê±¼ä×ª»¯ÎªÐÎÈç2010-01-01 12:30:30µÄ×Ö·û´®
	std::string parse_now_to_string();

	//½«ÐÎÈç20100101123030µÄ×Ö·û´®×ª»»ÎªÊ±¼ä
	struct tm parse_string_to_time(const std::string& str);

	//×Ö·û´®×ª»»ÎªboolÀàÐÍÖµ
	bool parse_string_to_bool(const std::string& str);

	//×Ö·û´®±êÊ¶´¦ÀíÀà
	class Tokenizer
	{
	public:
		static const std::string DEFAULT_DELIMITERS;
		Tokenizer(const std::string& str);
		Tokenizer(const std::string& str, const std::string& delimiters);

		//²éÕÒÏÂÒ»¸ö±êÊ¶
		bool NextToken(void);
		bool NextToken(const std::string& delimiters);

		//»ñÈ¡±êÊ¶×Ö·û´®
		const std::string GetToken(void) const;

		//ÖØÖÃ±êÊ¶Î»ÖÃ
		void Reset(void);

	protected:
		size_t _offset;
		const std::string _string;
		std::string _token;
		std::string _delimiters;
	};

	//¸ù¾Ý·Ö¸ô·ûdelimiters·Ö¸î×Ö·û´®
	void split_string(const std::string& str, const std::string& delimiters, std::vector<std::string>& str_vector);

	//Ê±¼ä²Ù×÷
	//µÃµ½µ±Ç°µÄÄê·Ý
	int get_cur_year();

	//¼ÆËãÐÎÈç2010-6-1 12:30:01µÄ×Ö·û´®´ú±íµÄÊ±´Á¼äµÄÊ±²îÃëÊý
	unsigned long get_time_diff(const std::string& time1, const std::string& time2);

	//½«IP×Ö·û´®×ª»»ÎªÍøÂç×Ö½ÚÐòIPÊýÖµ
	unsigned long parse_string_to_ip(const char* str);

	//½«ÍøÂç×Ö½ÚÐòIPÊýÖµ×ª»»Îª×Ö·û´®
	char* parse_ip_to_string(unsigned long ip);

	//µ±Ç°µÄÊ±´Á¾àlast_timestampÊÇ·ñ³¬¹ýÁËINTERVAL
	inline bool time_is_up(unsigned long INTERVAL, unsigned long last_timestamp)
	{
		unsigned long cur_timestamp = clock() / 1000;

		//·ÀÖ¹timeGetTime()·µ»ØÖµµ½´ïÖµÓòÉÏÏÞºó¹éÁã
		unsigned long durance = (last_timestamp > cur_timestamp) ? (0xFFFFFFFF - last_timestamp + cur_timestamp) : (cur_timestamp - last_timestamp);

		return (INTERVAL <= durance);
	}
};

#endif // _MISC_TOOL_H_
