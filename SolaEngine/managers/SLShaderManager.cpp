#include "SLShaderManager.h"

SLShaderManager* SLShaderManager::_instance = 0;

SLShaderManager* SLShaderManager::getInstance()
{
	if (_instance == nullptr)
		_instance = new SLShaderManager();

	return _instance;
}

SLShader* SLShaderManager::addShader(string& shaderName)
{
	SLShader* ret = nullptr;
	auto result = _shaders.find(shaderName);
	if (result != _shaders.end()){
		ret = result->second;
		return ret;
	}

	ret = new SLShader();
	string patch("shaders//" + shaderName);
	ret->load(patch  + ".vsh", patch  + ".fsh");
	_shaders.insert(pair<string, SLShader*>(shaderName, ret));

	return ret;
}

SLShaderManager::SLShaderManager()
{
}

SLShaderManager::~SLShaderManager()
{
}