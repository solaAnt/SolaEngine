#ifndef __SL_FILEUTILS_H_
#define __SL_FILEUTILS_H_
#include <string>
#include <vector>
#include <map>
#include <Windows.h>
using namespace std;

class SLFileUtils
{
public:
	SLFileUtils();
	~SLFileUtils();
	static SLFileUtils* getInstance();
	string getFullPatch(string& filePatch);
	string getStrContent(string& filePatch);

private:
	static string _resourcePatch;
	static SLFileUtils* _instance;
};

#endif