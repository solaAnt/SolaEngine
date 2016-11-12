#include "BaseHandler.h"

BaseHandler::BaseHandler(EventHandler handler)
{
	_handler = handler;
}

BaseHandler::~BaseHandler()
{
}

void BaseHandler::onEvent(void* data)
{
	_handler(data);
}