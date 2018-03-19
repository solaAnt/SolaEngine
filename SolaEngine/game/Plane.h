/*
	create by hy 20171209
*/
#ifndef __PLANE_H_
#define __PLANE_H_
using namespace std;
#include "../core/SLNode.h"

class Plane :public SLNode
{
public:
	Plane();
	void updateHp(float diff);
	float getHp();
	void removeALLEvent();

private:
	void _init();
	SLNode* _hpImg;
	BaseHandler* _bb;
	float _hp = 100.0f;
};

#endif