#ifndef SLSCENE_H_
#define SLSCENE_H_
#include "SLNode.h"
#include <GLTools.h>
#include <GLShaderManager.h>
#include <GLFrustum.h>
#include <GLBatch.h>
#include <GLMatrixStack.h>
#include <GLGeometryTransform.h>
class SLScene :public SLNode
{
public:
	SLScene();
	SLScene(int tag);
	~SLScene();

	void render();
private:
	GLShaderManager		_shaderManager;			// Shader Manager
	GLMatrixStack		_modelViewMatrix;		// Modelview Matrix
	GLMatrixStack		_projectionMatrix;		// Projection Matrix
	GLFrustum			_viewFrustum;			// View Frustum
	GLGeometryTransform	_transformPipeline;		// Geometry Transform Pipeline
	GLFrame				_cameraFrame;			// Camera frame
};

#endif