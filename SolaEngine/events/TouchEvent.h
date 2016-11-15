/*
	create by hy 20161115
*/

#ifndef __TOUCH_EVENT_H_
#define __TOUCH_EVENT_H_
using namespace std;
#include "BaseEvent.h"

class TouchEvent :public BaseEvent
{
public:
	const static string EVENT_ON_TOUCH_BEGIN;
	const static string EVENT_ON_TOUCH_END;

	static TouchEvent* getInstance(){
		if (_instance == nullptr)
			_instance = new TouchEvent();

		return _instance;
	};
private:
	static TouchEvent* _instance;
};

#endif