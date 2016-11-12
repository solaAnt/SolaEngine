#ifndef __TOUCH_EVENT_H_
#define __TOUCH_EVENT_H_
using namespace std;
#include <map>
#include <functional>
#include <vector>
#include "BaseHandler.h"

class BaseEvent
{
public:
	const static string EVENT_ON_NODE_UPDATED;
	BaseEvent();
	~BaseEvent();

	static BaseEvent* getInstance();
	void dispathEvent(string eventName, void* data);
	void addEventListener(string eventName, BaseHandler* handler);
	void removeListener(string eventName, BaseHandler* handler);
private:
	map<string, vector<BaseHandler*>*>* _handlers;
	static BaseEvent* _instance;
};

#endif