#ifndef __SLBone_h__
#define __SLBone_h__

#include <vector>
#include <math.h>
#include <math3d.h>
#include "../../extends/math/Mat4.h"
#include "SLNode3d.h"

using namespace std;

class SLBone :public SLNode3d
{
public:
	virtual void onDraw(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline);

	void setParentBone(SLBone* parent){
		_parent = parent;
		if (parent == nullptr){
			return;
		}

		_parent->addChild(this);
	};

private:
	SLBone* _parent;
};
#endif