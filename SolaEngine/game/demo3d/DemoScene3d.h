#ifndef __DemoScene3d_h__
#define __DemoScene3d_h__

using namespace std;
#include "../../core/3D/SLNode3d.h"

class DemoScene3d :public SLNode3d
{
public:
	DemoScene3d();
	~DemoScene3d();

protected:
	virtual void _init();
};

#endif