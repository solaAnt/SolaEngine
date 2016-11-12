#ifndef __LAUNCHER_H_
#define __LAUNCHER_H_
#include <ctime>
#include "core/SLSize.h"
#include "core/SLPoint.h"
class Launcher
{
public:
	const static char* APPLICATION_TITLE;
	static int DISPLAY_WIDTH;
	static int DISPLAY_HEIGHT;

	Launcher();
	~Launcher();

	void calculateDeltaTime();

	static Launcher* getInstance();
	void initRC();
	void startUp();

	void setWinSize(SLSize size);
	SLPoint screen2wp(SLPoint* screenPoint);
private:

	static Launcher* _instance;

	float _userFPS = 60.0f;
	float _userDeltaTime = 1.0f / _userFPS;
	double _deltaTime;
	clock_t _lastMainLoopTime;

	SLSize _winSize;
};

#endif