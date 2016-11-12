#include "BaseEvent.h"

const string BaseEvent::EVENT_ON_NODE_UPDATED = "EVENT_ON_NODE_UPDATED";

BaseEvent* BaseEvent::_instance = 0;

BaseEvent::BaseEvent()
{
	_handlers = new map<string, vector<BaseHandler*>*>();
}

BaseEvent::~BaseEvent()
{
	map<string, vector<BaseHandler*>*>::iterator it;
	for (it = _handlers->begin(); it!=_handlers->end(); ++it)
	{
		vector<BaseHandler*>* handlers = it->second;
		for (size_t i = 0; i < handlers->size(); i++)
		{
			BaseHandler* handler = (*handlers)[i];
			delete handler;
		}
		handlers->clear();
		delete handlers;
	}

	_handlers->clear();
	delete _handlers;
}

BaseEvent* BaseEvent::getInstance()
{
	if (_instance == nullptr)
		_instance = new BaseEvent();

	return _instance;
}

void BaseEvent::dispathEvent(string eventName, void* data){
	vector<BaseHandler*>* handlers = nullptr;
	auto result = _handlers->find(eventName);
	if (result != _handlers->end()){
		handlers = result->second;

		for (int i = 0; i < handlers->size(); i++)
		{
			BaseHandler* handler = (*handlers)[i];
			handler->onEvent(data);
		}
	}
	else{
		//printf("Not event.\r\n");
	}
}

void BaseEvent::addEventListener(string eventName, BaseHandler* handler){
	vector<BaseHandler*>* handlers = nullptr;
	auto result = _handlers->find(eventName);
	if (result != _handlers->end()){
		handlers = result->second;
	}else{
		handlers = new vector<BaseHandler*>();
		_handlers->insert(pair<string, vector<BaseHandler*>*>(eventName, handlers));
	}

	handlers->push_back(handler);
}

void BaseEvent::removeListener(string eventName, BaseHandler* handlerValue){
	vector<BaseHandler*>* handlers = nullptr;
	auto result = _handlers->find(eventName);
	if (result != _handlers->end()){
		handlers = result->second;

		auto it = find(handlers->begin(), handlers->end(), handlerValue);
		if (it != handlers->end()){
			handlers->erase(it);
			printf("Remove handler.\r\n");
		}
	}
	else{
		printf("There has not %s handlers",eventName);
	}
}