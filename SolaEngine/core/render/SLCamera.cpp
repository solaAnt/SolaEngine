#include "SLCamera.h"

SLCamera::SLCamera()
{
	Vec4 tmp(0, 0, 1,0);
	_forward = tmp;
}

SLCamera::~SLCamera()
{
}