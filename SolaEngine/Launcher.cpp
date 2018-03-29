#include "Launcher.h"
#include "managers/SLSceneManager.h"
#include "managers/SLTextureManager.h"
#include "core/SLScene.h"
#include "events/TouchEvent.h"
#include <sys/timeb.h>
#include "game/Startup.h"

Launcher* Launcher::_instance = 0;

const char* Launcher::APPLICATION_TITLE = "SolaEngine(Ver beta 0.2) 后处理实现";
int Launcher::DISPLAY_WIDTH = 512*3/1.5f;//1024.0f;
int Launcher::DISPLAY_HEIGHT = 768 / 1.5f;//512.0f*1.5;

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

bool up = true;
void Launcher::calculateDeltaTime()
{	
	if (up){
		testcode += 0.002f;
		if (testcode >= 2.0f){
			testcode = 2.0f;
			up = false;
		}
	}
	else{
		testcode -= 0.002f;
		if (testcode <= 0.0f){
			testcode = 0.0f;
			up = true;
		}
	}

	clock_t now = clock();
	_deltaTime=(double)(now - _lastMainLoopTime) / CLOCKS_PER_SEC;
	//printf("_deltaTime %f \r\n", _deltaTime);
	_lastMainLoopTime = now;
}

double Launcher::getDeltaTime()
{
	return _deltaTime;
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