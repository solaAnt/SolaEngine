#ifndef __SLString_H__
#define __SLString_H__
#include <string>
#include <vector>
#include <map>
#include <Windows.h>
using namespace std;

class SLString
{
public:
	static string replace(string str, string pattern, string dstPattern, int count = -1);

	static vector<string> split(const string &s, const string &seperator);

	static bool contain(const string &content, const string &reg);
};

#endif