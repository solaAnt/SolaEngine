#include "SLString.h"
#include <string>  
#include <fstream>  
#include <streambuf>  

string SLString::replace(string str, string pattern, string dstPattern, int count)
{
	string retStr = "";
	string::size_type pos;
	int i = 0, l_count = 0, szStr = str.length();
	if (-1 == count) // replace all
		count = szStr;
	for (i = 0; i<szStr; i++)
	{
		if (string::npos == (pos = str.find(pattern, i)))  break;
		if (pos < szStr)
		{
			retStr += str.substr(i, pos - i) + dstPattern;
			i = pos + pattern.length() - 1;
			if (++l_count >= count)
			{
				i++;
				break;
			}
		}
	}
	retStr += str.substr(i);
	return retStr;
}

vector<string> SLString::split(const string &s, const string &seperator){
	vector<string> result;
	typedef string::size_type string_size;
	string_size i = 0;

	while (i != s.size()){
		//找到字符串中首个不等于分隔符的字母；
		int flag = 0;
		while (i != s.size() && flag == 0){
			flag = 1;
			for (string_size x = 0; x < seperator.size(); ++x)
			if (s[i] == seperator[x]){
				++i;
				flag = 0;
				break;
			}
		}

		//找到又一个分隔符，将两个分隔符之间的字符串取出；
		flag = 0;
		string_size j = i;
		while (j != s.size() && flag == 0){
			for (string_size x = 0; x < seperator.size(); ++x)
			if (s[j] == seperator[x]){
				flag = 1;
				break;
			}
			if (flag == 0)
				++j;
		}
		if (i != j){
			result.push_back(s.substr(i, j - i));
			i = j;
		}
	}
	return result;
}

bool SLString::contain(const string &content, const string &reg){
	string::size_type idx = content.find(reg);
	return idx != string::npos;
}