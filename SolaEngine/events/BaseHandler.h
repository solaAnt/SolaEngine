#ifndef __SL_BASE_HANDLER_H_
#define __SL_BASE_HANDLER_H_

using namespace std;
#include <functional>
typedef function<void(void*)> EventHandler;

class BaseHandler
{
public:
	BaseHandler(EventHandler handler);
	~BaseHandler();

	void onEvent(void* data);
private:
	EventHandler _handler;
};

#endif