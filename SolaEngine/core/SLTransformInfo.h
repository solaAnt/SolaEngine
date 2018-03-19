#ifndef __SL_TRANFORM_INFO_H_
#define __SL_TRANFORM_INFO_H_
#include <math3d.h>

class SLTransformInfo
{
public:
	SLTransformInfo();
	~SLTransformInfo();

	float tanslateX;
	float tanslateY;
	float tanslateZ;

	float scaleX=1;
	float scaleY=1;
	float scaleZ = 1;

	float rotationX;
	float rotationY;
	float rotationZ;

	M3DMatrix44f mv;
private:

};

#endif