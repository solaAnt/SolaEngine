#ifndef __SLCameraManager_h__
#define __SLCameraManager_h__

//#include "../core/misc/SLSingleton.h"
#include "../core/render/SLCamera.h"

//#include "../core/SLTexture.h"
//#include <string>
//#include <vector>
//#include <map>

using namespace std;

class SLCameraManager
{
public:
	static SLCameraManager* getInstance(){
		if (_instance == nullptr)
			_instance = new SLCameraManager();

		return _instance;
	}

	SLCamera* getMainCamera(){ return _mainCamera; }

private:
	SLCameraManager();
	~SLCameraManager();

private:
	SLCamera* _mainCamera;
	//map<string, SLTexture*> _textures;
	static SLCameraManager* _instance;
};

#endif