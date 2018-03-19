#ifndef __DemoScene2d_h__
#define __DemoScene2d_h__

using namespace std;
#include "../../core/SLNode.h"

class DemoScene2d :public SLNode
{
public:
	DemoScene2d();
	~DemoScene2d();

protected:
	virtual void _init();
};

#endif