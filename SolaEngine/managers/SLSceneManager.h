#ifndef __SL_SCENEMGR_H_
#define __SL_SCENEMGR_H_
#include "../core/SLScene.h"
#include "../core/3D/SLNode3d.h"

class SLSceneManager
{
public:
	static SLSceneManager* getInstance();

	void runScene(SLScene* value);
	SLScene* getRunningScene();

	void runScene3D(SLNode3d* value);
	SLNode3d* getScene3D();

	SLSceneManager();
	~SLSceneManager();

private:
	static SLSceneManager* _instance;
	SLScene* _runningScene;
	SLNode3d* _scene3D;
};

#endif