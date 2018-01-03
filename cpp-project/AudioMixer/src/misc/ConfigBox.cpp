#include "ConfigBox.h"
#include <iostream>
#include <fstream>	
#include <sstream>
#include <string.h>
#include <stdlib.h>

using namespace std;

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::CConfigBox
// ×÷Õß: chenqg
// ÃèÊö: CConfigBoxÀàµÄ¹¹Ôìº¯Êý£¬³ÉÔ±³õÊ¼»¯
// ·µ»ØÖµ: ÎÞ
// ²ÎÊý: 
//   [void]
// ----------------------------------------------------------------------
CConfigBox::CConfigBox() :
    _is_open(false),
    _is_modified(false),
    _config_file("")
{
    _config_lines.clear();
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::~CConfigBox
// ×÷Õß: chenqg
// ÃèÊö: CConfigBoxÀàµÄÎö¹¹º¯Êý
// ·µ»ØÖµ: ÎÞ
// ²ÎÊý: 
//   [void]
// ----------------------------------------------------------------------
CConfigBox::~CConfigBox()
{
	_config_lines.clear();
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::load
// ×÷Õß: chenqg
// ÃèÊö: ´ò¿ªÅäÖÃÎÄ¼þ£¬¶ÁÈ¡ÅäÖÃÐÅÏ¢ÁÐ±í
// ·µ»ØÖµ: [void]
// ²ÎÊý: 
//   [const std::string& config_file] ÊäÈëÅäÖÃÎÄ¼þÃû  
// ----------------------------------------------------------------------
void CConfigBox::load(const std::string& config_file)
{
    // ½â¾öifstream´ò¿ªÎÄ¼þÖÐÎÄÂ·¾¶ÃûÎÊÌâ
    // ÉèÖÃ´úÂëÒ³Îª¼òÌåÖÐÎÄ£¬936ÊÇ¼òÌåÖÐÎÄµÄ´úÂëÒ³¡£
    std::locale loc1 = std::locale::global(std::locale(".936"));

    // ´ò¿ªÅäÖÃÎÄ¼þ
    ifstream ifs;
    ifs.open(config_file.c_str());
    _is_open = ifs.is_open();

    //»Ö¸´Ô­À´µÄ´úÂëÒ³
    std::locale::global(std::locale(loc1));

    if (_is_open)
    {
        // ±£´æÅäÖÃÎÄ¼þ
        _config_file = config_file;
        
        // ¶ÁÈ¡ÅäÖÃÐÅÏ¢
        _config_lines.clear();
        char buffer[1024];
        while(!ifs.eof())
        {
            ::memset(buffer, '\0', 1024);
            ifs.getline(buffer, 1024);
            string line = buffer;
            _config_lines.push_back(line);
        }

        _is_modified = false;
    }

	ifs.close();
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::save
// ×÷Õß: chenqg
// ÃèÊö: ±£´æÅäÖÃÐÅÏ¢
// ·µ»ØÖµ: [void]
// ²ÎÊý: 
//   [void]
// ----------------------------------------------------------------------
void CConfigBox::save()
{
    // Èç¹ûÅäÖÃÎÄ¼þ´ò¿ªÊ§°Ü»òÅäÖÃÐÅÏ¢Î´ÐÞ¸Ä£¬²»×ö±£´æ
    if (!_is_open || !_is_modified) return;

    ofstream ofs;
    ofs.open(_config_file.c_str());
    
    vector<string>::iterator iter = _config_lines.begin();
    while (iter != _config_lines.end())
    {
        if (iter != _config_lines.begin()) ofs << endl;
        ofs << *iter;
        iter++;
    }

    ofs.close();
    _is_modified = false;
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::get_property
// ×÷Õß: chenqg
// ÃèÊö: ¸ù¾Ý¼üÖµ»ñÈ¡×Ö·û´®ÊôÐÔÖµ
// ·µ»ØÖµ: [std::string] ×Ö·û´®ÊôÐÔÖµ
// ²ÎÊý: 
//   [const std::string& key] ÊäÈë¼üÖµ  
//   [const std::string& default_property] ÊäÈëÈ±Ê¡ÊôÐÔÖµ  
// ----------------------------------------------------------------------
std::string CConfigBox::get_property(const std::string& key, const std::string& default_property)
{
    string result = default_property;

    string::size_type pos = -1;
    vector<string>::iterator iter;
    for (iter =_config_lines.begin(); iter != _config_lines.end(); iter++)
    {
        // È¥³ý×Ö·û´®Ç°ºó¿Õ¸ñ
        string line = trim(*iter);

        // ºöÂÔ¿ÕÐÐ
        if (line.empty()) continue; 

        // ºöÂÔ×¢ÊÍÐÐ
        if (line.at(0) == '#') continue; 

        pos = line.find('=');
        if (pos == string::npos) continue;

        // ÅÐ¶Ï¼üÖµ
        string line_key = trim(line.substr(0, pos)); 
        if (line_key == key)
        {
            result = trim(line.substr(pos + 1));
            break;
        }
    }

    return result;
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::get_property_as_int
// ×÷Õß: chenqg
// ÃèÊö: ¸ù¾Ý¼üÖµ»ñÈ¡Êý×ÖÀàÐÍÊôÐÔÖµ
// ·µ»ØÖµ: [int] Êý×ÖÀàÐÍÊôÐÔÖµ
// ²ÎÊý: 
//   [const std::string& key] ÊäÈë¼üÖµ  
//   [int default_property] ÊäÈëÈ±Ê¡ÊôÐÔÖµ  
// ----------------------------------------------------------------------
int CConfigBox::get_property_as_int(const std::string& key, int default_property)
{
    int result = default_property;

    string str = get_property(key, "");
    if (!str.empty())
    {
        result = ::atoi(str.c_str());
    }

    return result;
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CSingleLogger::GetPropertiesWithPrefix
// ×÷Õß: chenqg
// ÃèÊö: ¸ù¾Ý¼üÖµÇ°×º»ñÈ¡ÊôÐÔÁÐ±í
// ·µ»ØÖµ: [void]
// ²ÎÊý: 
//   [const std::string& key_prefix] ÊäÈë¼üÖµÇ°×º  
//   [std::vector<std::string>& properties] Êä³öÊôÐÔÁÐ±í  
// ----------------------------------------------------------------------
void CConfigBox::get_properties_with_prefix(const std::string& key_prefix, std::vector<std::string>& properties)
{
    string::size_type pos = -1;
    vector<string>::iterator iter;
    for (iter =_config_lines.begin(); iter != _config_lines.end(); iter++)
    {
        // È¥³ý×Ö·û´®Ç°ºó¿Õ¸ñ
        string line = trim(*iter);

        // ºöÂÔ¿ÕÐÐ
        if (line.empty()) continue; 

        // ºöÂÔ×¢ÊÍÐÐ
        if (line.at(0) == '#') continue; 

        pos = line.find('=');
        if (pos == string::npos) continue;

        // ÅÐ¶Ï¼üÖµÇ°×ºÊÇ·ñÏàÍ¬
        string line_key = trim(line.substr(0, pos));
        if (line_key.find(key_prefix) == string::npos) continue;

        string line_key_prefix = line_key.substr(0, key_prefix.size()); 
        string line_key_suffix = trim(line_key.substr(key_prefix.size(), line_key.size()));
        if (line_key_prefix == key_prefix)
        {
            properties.push_back(trim(line.substr(pos + 1)));
        }
    }
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CConfigBox::get_properties_map_with_prefix
// ×÷Õß: chenqg
// ÃèÊö: ¸ù¾Ý¼üÖµÇ°×º»ñÈ¡ÊôÐÔÁÐ±í
// ·µ»ØÖµ: 
//   [void] 
// ²ÎÊý: 
//   [const std::string& key_prefix] ÊäÈë¼üÖµÇ°×º   
//   [std::map<std::string, std::string>& properties_map] Êä³öÊôÐÔÁÐ±í
// ----------------------------------------------------------------------
void CConfigBox::get_properties_map_with_prefix(const std::string& key_prefix, std::map<std::string, std::string>& properties_map)
{
    string::size_type pos = -1;
    vector<string>::iterator iter;
    for (iter =_config_lines.begin(); iter != _config_lines.end(); iter++)
    {
        // È¥³ý×Ö·û´®Ç°ºó¿Õ¸ñ
        string line = trim(*iter);

        // ºöÂÔ¿ÕÐÐ
        if (line.empty()) continue; 

        // ºöÂÔ×¢ÊÍÐÐ
        if (line.at(0) == '#') continue; 

        pos = line.find('=');
        if (pos == string::npos) continue;

        // ÅÐ¶Ï¼üÖµÇ°×ºÊÇ·ñÏàÍ¬
        string line_key = trim(line.substr(0, pos));
        if (line_key.find(key_prefix) == string::npos) continue;

        string line_key_prefix = line_key.substr(0, key_prefix.size()); 
        string line_key_suffix = trim(line_key.substr(key_prefix.size(), line_key.size()));
        if (line_key_prefix == key_prefix)
        {
			properties_map[key_prefix + line_key_suffix] = trim(line.substr(pos + 1));
        }
    }
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CSingleLogger::set_property
// ×÷Õß: chenqg
// ÃèÊö: ¸ù¾Ý¼üÖµÉèÖÃÊôÐÔ
// ·µ»ØÖµ: [void]
// ²ÎÊý: 
//   [const std::string& key] ÊäÈë¼üÖµ  
//   [const std::string& property] ÊäÈëÊôÐÔ  
// ----------------------------------------------------------------------
void CConfigBox::set_property(const std::string& key, const std::string& property)	
{
    bool is_key_found = false;
    ostringstream oss;
    oss << key << "=" << property;

    string::size_type pos = -1;
    vector<string>::iterator iter;
    for (iter =_config_lines.begin(); iter != _config_lines.end(); iter++)
    {
        // È¥³ý×Ö·û´®Ç°ºó¿Õ¸ñ
        string line = trim(*iter);

        // ºöÂÔ¿ÕÐÐ
        if (line.empty()) continue; 

        // ºöÂÔ×¢ÊÍÐÐ
        if (line.at(0) == '#') continue; 

        pos = line.find('=');
        if (pos == string::npos) continue;

        // ÅÐ¶Ï¼üÖµ
        string line_key = trim(line.substr(0, pos)); 
        if (line_key == key)
        {
            is_key_found = true;
            *iter = oss.str();
            break;
        }
    }

    if (!is_key_found)
    {
        _config_lines.push_back(oss.str());
    }

    _is_modified = true;
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CSingleLogger::set_property_as_int
// ×÷Õß: chenqg
// ÃèÊö: ¸ù¾Ý¼üÖµÉèÖÃÊôÐÔ
// ·µ»ØÖµ: [void]
// ²ÎÊý: 
//   [const std::string& key] ÊäÈë¼üÖµ  
//   [int property] ÊäÈëÊôÐÔ  
// ----------------------------------------------------------------------
void CConfigBox::set_property_as_int(const std::string& key, int property)
{
    ostringstream oss;
    oss << property;
    set_property(key, oss.str());
}

// ----------------------------------------------------------------------
// º¯ÊýÃû: CSingleLogger::trim
// ×÷Õß: chenqg
// ÃèÊö: É¾³ý×Ö·û´®Ç°ºó¿Õ¸ñ¡¢TAB¼üºÍ»Ø³µ»»ÐÐ·û
// ·µ»ØÖµ: [std::string] ×Ö·û´®
// ²ÎÊý: 
//   [const std::string& str] ÊäÈë×Ö·û´®  
// ----------------------------------------------------------------------
std::string CConfigBox::trim(const std::string& str) 
{
    string t = str;
    t.erase(0, t.find_first_not_of(" \t\n\r"));
    t.erase(t.find_last_not_of(" \t\n\r") + 1);
    return t;
}
