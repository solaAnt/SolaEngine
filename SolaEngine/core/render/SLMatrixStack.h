#ifndef __SLMatrixStack_h__
#define __SLMatrixStack_h__
#include <GLTools.h>
#include <GLFrustum.h>
#include <GLBatch.h>
#include <GLFrame.h>
#include <GLMatrixStack.h>
#include <GLGeometryTransform.h>

//for matrix
#include "../../extends/math/Mat4.h"
using namespace std;

class SLMatrixStack
{
public:
	SLMatrixStack();
	~SLMatrixStack();

public:
	void changeSize(int z);
	void changeSize3d(int z);

public:
	GLMatrixStack*		modelViewMatrix;
	GLMatrixStack*		projectionMatrix;
	GLFrustum* viewFrustum;
	GLGeometryTransform*	transformPipeline;
};

#endif