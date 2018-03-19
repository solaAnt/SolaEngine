/*
	create by hy 20171209
*/
#ifndef __BULLET_H_
#define __BULLET_H_
using namespace std;
#include "../core/SLNode.h"

class Bullet :public SLNode
{
public:
	Bullet();
	void removeALLEvent();
private:
	void _init();
	SLNode* _hpImg;
	BaseHandler* _bb;
};

#endif