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

void SLSceneManager::runScene3D(SLNode3d* value)
{
	if (_scene3D != nullptr)
		delete _scene3D;

	_scene3D = value;
}

SLNode3d* SLSceneManager::getScene3D()
{
	return _scene3D;
}

SLSceneManager::SLSceneManager()
{
}

SLSceneManager::~SLSceneManager()
{
}