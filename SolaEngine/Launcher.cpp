#include "Launcher.h"
#include "managers/SLSceneManager.h"
#include "managers/SLTextureManager.h"
#include "core/SLScene.h"
#include "events/TouchEvent.h"
#include <sys/timeb.h>
#include "game/Startup.h"

Launcher* Launcher::_instance = 0;

const char* Launcher::APPLICATION_TITLE = "SolaEngine(Ver beta)      点击窗口，测试基础动态效果和点击响应。";
int Launcher::DISPLAY_WIDTH = 800;
int Launcher::DISPLAY_HEIGHT = 500;

Launcher::Launcher(){
}

Launcher::~Launcher(){
}

Launcher* Launcher::getInstance(){
	if (_instance == nullptr){
		_instance = new Launcher();
	}

	return _instance;
}

void Launcher::calculateDeltaTime()
{
	clock_t now = clock();
	_deltaTime=(double)(now - _lastMainLoopTime) / CLOCKS_PER_SEC;
	//printf("_deltaTime %f \r\n", _deltaTime);
	_lastMainLoopTime = now;
}

void Launcher::initRC(){
}

void Launcher::setWinSize(SLSize size){
	_winSize = size;
}

SLPoint Launcher::screen2wp(SLPoint* screenPoint){
	SLSize winSize = _winSize;
	float winW = winSize.w;
	float winH = winSize.h;

	float wr = screenPoint->x / winW;
	float hr = screenPoint->y / winH;
	wr *= 1.01f;
	hr *= 1.02f;
	//fix by hy:for unknow bug.
	//p.y = ((float)y)*1.02f;

	SLPoint result;
	result.x = wr*DISPLAY_WIDTH;
	result.y = (1-hr)*DISPLAY_HEIGHT;

	return result;
}

void Launcher::startUp(){
	_lastMainLoopTime = clock();

	Startup();
}