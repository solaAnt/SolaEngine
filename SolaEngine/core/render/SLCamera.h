#ifndef __SLCamera_h__
#define __SLCamera_h__

#include "../../core/3D/SLNode3d.h"
#include "../../managers/SLSceneManager.h"
#include "../../extends/math/Mat4.h"
#include "../../extends/math/Vec3.h"

//#include <string>
//#include <GLTools.h>
//#include <GLShaderManager.h>
//#include <GLFrustum.h>
//#include <GLBatch.h>
//#include <GLMatrixStack.h>
//#include <GLGeometryTransform.h>
//#include "../../core/SLTexture.h"

using namespace std;

class SLCamera :public SLNode3d
{
public:
	SLCamera();
	~SLCamera();

public:

	void renderScene(GLMatrixStack &mvStack, GLGeometryTransform &transformPipeline){
		glMatrixMode(GL_MODELVIEW);

		glPushMatrix();
		//glScalef(-_transformInfo.scaleX, -_transformInfo.scaleY, -_transformInfo.scaleZ);

		glRotatef(-_transformInfo.rotationZ, 0, 0, 1);
		glRotatef(-_transformInfo.rotationY, 0, 1, 0);
		glRotatef(-_transformInfo.rotationX, 1, 0, 0);
		
		glTranslatef(-_transformInfo.tanslateX, -_transformInfo.tanslateY, -_transformInfo.tanslateZ);
		
		SLSceneManager* smgr = SLSceneManager::getInstance();
		smgr->getScene3D()->draw(mvStack, transformPipeline);
		glPopMatrix();
	}

public:
	Vec4 getForward(){
		Mat4 rMat;
		rMat.rotateX((_transformInfo.rotationX));
		rMat.rotateY((_transformInfo.rotationY));
		rMat.rotateZ((_transformInfo.rotationZ));

		Vec4 ret = rMat*_forward;
		ret.normalize();
		printf("forward x=%f y=%f z=%f \r\n", ret.x, ret.y, ret.z);
		return ret;
	}
private:
	Vec4 _forward;
};

#endif