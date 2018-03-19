#include "SLCameraManager.h"

SLCameraManager* SLCameraManager::_instance = 0;

SLCameraManager::SLCameraManager(){
	_mainCamera = new SLCamera();
}

SLCameraManager::~SLCameraManager(){
	delete _mainCamera;
	_mainCamera = nullptr;
}