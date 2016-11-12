#include "SLTextureManager.h"
#include "../core/SLTexture.h"

SLTextureManager* SLTextureManager::_instance = 0;

SLTextureManager* SLTextureManager::getInstance()
{
	if (_instance == nullptr)
		_instance = new SLTextureManager();

	return _instance;
}

SLTexture* SLTextureManager::addTexture(string path)
{
	SLTexture* texture = nullptr;
	auto result = _textures.find(path);
	if (result != _textures.end()){
		texture = result->second;
		return texture;
	}

	texture = new SLTexture();
	texture->init(path);
	_textures.insert(pair<string, SLTexture*>(path, texture));

	return texture;
}


SLTextureManager::SLTextureManager()
{
}

SLTextureManager::~SLTextureManager()
{
}