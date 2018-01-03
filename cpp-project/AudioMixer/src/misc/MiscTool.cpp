// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "MiscTool.h"

namespace MiscTools
{
	unsigned long get_time_diff(const std::string& time1, const std::string& time2)
	{

		struct tm tm1,tm2;

		tm1.tm_year  = atoi(time1.substr(0,time1.find_first_of("-")).c_str())-1900;   //µÃµ½time1Äê

		tm1.tm_mon  =  atoi(time1.substr(time1.find_first_of("-")+1,time1.find_last_of("-")-time1.find_first_of("-")-1).c_str());    //µÃµ½time1ÔÂ

		tm1.tm_mday =  atoi(time1.substr(time1.find_last_of("-")+1,time1.find_first_of(" ")-time1.find_last_of("-")-1).c_str());       //µÃµ½time1ÈÕ

		tm1.tm_hour =  atoi(time1.substr(time1.find_first_of(" ")+1,time1.find_first_of(":")-time1.find_first_of(" ")-1).c_str());     //µÃµ½time1Ê±

		tm1.tm_min  =  atoi(time1.substr(time1.find_first_of(":")+1,time1.find_last_of(":")-time1.find_first_of(":")-1).c_str());  //µÃµ½time1·Ö

		tm1.tm_sec  =  atoi(time1.substr(time1.find_last_of(":")+1,time1.length()-time1.find_last_of(":")-1).c_str());   //µÃµ½time1Ãë

		tm2.tm_year =  atoi(time2.substr(0,time2.find_first_of("-")).c_str())-1900;   //µÃµ½time2Äê

		tm2.tm_mon  =  atoi(time2.substr(time2.find_first_of("-")+1,time2.find_last_of("-")-time2.find_first_of("-")-1).c_str());   //µÃµ½time2ÔÂ

		tm2.tm_mday =  atoi(time2.substr(time2.find_last_of("-")+1,time2.find_first_of(" ")-time2.find_last_of("-")-1).c_str());       //µÃµ½time2ÈÕ

		tm2.tm_hour =  atoi(time2.substr(time2.find_first_of(" ")+1,time2.find_first_of(":")-time2.find_first_of(" ")-1).c_str());     //µÃµ½time2Ê±

		tm2.tm_min  =  atoi(time2.substr(time2.find_first_of(":")+1,time2.find_last_of(":")-time2.find_first_of(":")-1).c_str());  //µÃµ½time2·Ö

		tm2.tm_sec  =  atoi(time2.substr(time2.find_last_of(":")+1,time2.length()-time2.find_last_of(":")-1).c_str());   //µÃµ½time2Ãë

		return static_cast<unsigned long>(fabs(difftime(mktime(&tm2), mktime(&tm1))));//µÃµ½Ïà²îµÄÃëÊý		
	}

	//Ä¬ÈÏµÄ×Ö·û´®·Ö¸î±êÊ¶·û
	const std::string Tokenizer::DEFAULT_DELIMITERS(" ");

	Tokenizer::Tokenizer(const std::string& str)
		: _string(str), _offset(0), _delimiters(DEFAULT_DELIMITERS) {}

	Tokenizer::Tokenizer(const std::string& str, const std::string& delimiters)
		: _string(str), _offset(0), _delimiters(delimiters) {}

	//²éÕÒÏÂÒ»¸ö±êÊ¶
	bool Tokenizer::NextToken() 
	{
		return NextToken(_delimiters);
	}

	//²éÕÒÏÂÒ»¸ö±êÊ¶
	bool Tokenizer::NextToken(const std::string& delimiters) 
	{
		// ²éÕÒÏÂÒ»¸ö±êÊ¶ÆðÊ¼×Ö·ûÎ»ÖÃ
		size_t i = _string.find_first_not_of(delimiters, _offset);
		if (i == std::string::npos) {
			_offset = _string.length();
			return false;
		}

		// ²éÕÒ±êÊ¶½áÊøÎ»ÖÃ
		size_t j = _string.find_first_of(delimiters, i);
		if (j == std::string::npos) {
			_token = _string.substr(i);
			_offset = _string.length();
			return true;
		}

		_token = _string.substr(i, j - i);
		_offset = j;
		return true;
	}

	//»ñÈ¡±êÊ¶
	const std::string Tokenizer::GetToken(void) const 
	{
		return _token;
	}

	//ÖØÖÃ±êÊ¶Î»ÖÃ
	void Tokenizer::Reset(void) 
	{
		_offset = 0;
	}

	//×Ö·û´®²Ù×÷
	// É¾³ý×Ö·û´®×ó±ß¿Õ°×
	std::string trim_string_left(const std::string& str)
	{
		std::string t = str;
		t.erase(0, t.find_first_not_of(" \t\n\r"));
		return t;
	};

	// É¾³ý×Ö·û´®ÓÒ±ß¿Õ°×
	std::string trim_string_right(const std::string& str)
	{
		std::string t = str;
		t.erase(t.find_last_not_of(" \t\n\r") + 1);
		return t;
	};

	// É¾³ý×Ö·û´®×óÓÒÁ½±ß¿Õ°×
	std::string trim_string(const std::string& str)
	{
		std::string t = str;
		t.erase(0, t.find_first_not_of(" \t\n\r"));
		t.erase(t.find_last_not_of(" \t\n\r") + 1);
		return t;
	};

	//½«×Ö·û´®×ª»»ÎªÐ¡Ð´
	std::string string_to_lower(const std::string& str)
	{
		std::string t = str;
		transform(t.begin(), t.end(), t.begin(), ::tolower);
		return t;
	};

	//½«×Ö·û´®×ª»»Îª´óÐ´
	std::string string_to_upper(const std::string& str)
	{
		std::string t = str;
		transform(t.begin(), t.end(), t.begin(), ::toupper);
		return t;
	};

	//×Ö·û´®strÊÇ·ñÒÔsubstr¿ªÍ·
	bool is_string_start_with(const std::string& str, const std::string& substr)
	{
		return (!str.find(substr)) ? true : false;
	};

	//×Ö·û´®strÊÇ·ñÒÔsubstr¿ªÍ·
	bool is_string_end_with(const std::string& str, const std::string& substr)
	{
		return (str.rfind(substr) == (str.length() - substr.length())) ? true : false;
	};

	//ºöÂÔ´óÐ¡Ð´±È½Ï×Ö·û´®
	bool compare_string_ignore_case(const std::string& str1, const std::string& str2)
	{
		return (string_to_lower(str1) == string_to_lower(str2)) ? true : false;
	};

	//×Ö·û´®×ª»»ÎªboolÀàÐÍÖµ
	bool parse_string_to_bool(const std::string& str)
	{
		//bool value;
		//std::istringstream iss(str);
		//iss >> std::boolalpha >> value;
		//return value;

		return compare_string_ignore_case(trim_string(str), "true");
	};

	//¸ù¾Ý·Ö¸ô·ûdelimiters·Ö¸î×Ö·û´®
	void split_string(const std::string& str, const std::string& delimiters, std::vector<std::string>& str_vector)
	{
		str_vector.clear();

		Tokenizer tokenizer(str, delimiters);
		while (tokenizer.NextToken()) 
		{
			str_vector.push_back(tokenizer.GetToken());
		}
	};

	unsigned long parse_string_to_ip(const char* str)
	{
		return inet_addr(str);
	}

	char* parse_ip_to_string(unsigned long ip)
	{
		return inet_ntoa(*(reinterpret_cast<struct in_addr*>(&ip)));
	}

}

