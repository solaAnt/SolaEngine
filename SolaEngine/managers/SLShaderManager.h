#ifndef __SLShaderManager_h__
#define __SLShaderManager_h__

#include "../core/render/SLShader.h"
#include <string>
#include <vector>
#include <map>

using namespace std;

class SLShaderManager
{
public:
	SLShaderManager();
	~SLShaderManager();
	static SLShaderManager* getInstance();

	SLShader* addShader(string& shaderName);

private:
	static SLShaderManager* _instance;
	map<string, SLShader*> _shaders;
};

#endif