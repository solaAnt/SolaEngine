/*create by hy 20161115*/
#include "TouchEvent.h"

const string TouchEvent::EVENT_ON_TOUCH_BEGIN = "EVENT_ON_TOUCH_BEGIN";
const string TouchEvent::EVENT_ON_TOUCH_END = "EVENT_ON_TOUCH_END";

const string TouchEvent::EVENT_ON_TOUCH_MOVE = "EVENT_ON_TOUCH_MOVE";
TouchEvent* TouchEvent::_instance = 0;