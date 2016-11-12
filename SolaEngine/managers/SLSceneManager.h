#ifndef __SL_SCENEMGR_H_
#define __SL_SCENEMGR_H_
#include "../core/SLScene.h"

class SLSceneManager
{
public:
	static SLSceneManager* getInstance();

	void runScene(SLScene* value);
	SLScene* getRunningScene();

	SLSceneManager();
	~SLSceneManager();

private:
	static SLSceneManager* _instance;
	SLScene* _runningScene;
};

#endif