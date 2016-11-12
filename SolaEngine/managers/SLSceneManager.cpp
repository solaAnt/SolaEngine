#include "SLSceneManager.h"
#include "../core/SLScene.h"

SLSceneManager* SLSceneManager::_instance = 0;

SLSceneManager* SLSceneManager::getInstance()
{
	if (_instance == nullptr)
		_instance = new SLSceneManager();

	return _instance;
}

void SLSceneManager::runScene(SLScene* value)
{
	if (_runningScene != nullptr)
		delete _runningScene;

	_runningScene = value;
}

SLScene* SLSceneManager::getRunningScene()
{
	return _runningScene;
}

SLSceneManager::SLSceneManager()
{
}

SLSceneManager::~SLSceneManager()
{
}