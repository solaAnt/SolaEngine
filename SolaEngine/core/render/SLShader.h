#ifndef SLSAHDER_H_
#define SLSAHDER_H_

#include <string>
#include <GLTools.h>
//#include <GLShaderManager.h>
//#include <GLFrustum.h>
//#include <GLBatch.h>
//#include <GLMatrixStack.h>
//#include <GLGeometryTransform.h>
#include "../../core/SLTexture.h"

using namespace std;

class SLShader
{
public:
	SLShader();
	~SLShader();

	void load(string& vsPatch, string& fsPatch);
	void use();

public:
	void setUniformMat44(string& uniformName,M3DMatrix44f* value);
	void setUniformVec4(string& uniformName, M3DVector4f* value);
	void setUniformTex(string& uniformName, int unionIndex, SLTexture* texture);
	void setUniformTex(string& uniformName, int unionIndex, GLuint& textureId);
	void setUniformFloat(string& uniformName, float& value);
	
	GLuint _id;
private:

	
};

#endif