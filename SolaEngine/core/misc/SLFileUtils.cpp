#include "SLFileUtils.h"
#include <string>  
#include <fstream>  
#include <streambuf>  

SLFileUtils* SLFileUtils::_instance = 0;
string SLFileUtils::_resourcePatch;

SLFileUtils* SLFileUtils::getInstance()
{
	if (_instance == nullptr)
		_instance = new SLFileUtils();

	return _instance;
}

string SLFileUtils::getFullPatch(string& filePatch)
{
	string tmp = _resourcePatch + filePatch;
	return tmp;
}

string SLFileUtils::getStrContent(string& filePatch)
{
	string truePatch = this->getFullPatch(filePatch);
	ifstream t(truePatch);
	string str((istreambuf_iterator<char>(t)),
		istreambuf_iterator<char>());

	return str;
}

SLFileUtils::SLFileUtils()
{
	char curPath[MAX_PATH];
	GetCurrentDirectory(MAX_PATH, curPath);
	string path(curPath);
	path.append("\\res\\");

	_resourcePatch = path;
}

SLFileUtils::~SLFileUtils()
{
}