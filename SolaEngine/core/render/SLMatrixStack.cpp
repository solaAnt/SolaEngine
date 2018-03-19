#include "SLMatrixStack.h"
#include "../../Launcher.h"

SLMatrixStack::SLMatrixStack()
{
	modelViewMatrix = new GLMatrixStack();
	projectionMatrix = new GLMatrixStack();
	viewFrustum = new GLFrustum();
	transformPipeline = new GLGeometryTransform();
}


SLMatrixStack::~SLMatrixStack()
{
	delete	modelViewMatrix;
	delete	projectionMatrix;
	delete	viewFrustum;
	delete	transformPipeline;
}

void SLMatrixStack::changeSize(int z)
{
	viewFrustum->SetOrthographic(0, (GLfloat)Launcher::DISPLAY_WIDTH, 0, (GLfloat)Launcher::DISPLAY_HEIGHT, -z, z);

	projectionMatrix->LoadMatrix(viewFrustum->GetProjectionMatrix());
	transformPipeline->SetMatrixStacks(*modelViewMatrix, *projectionMatrix);
}

void SLMatrixStack::changeSize3d(int z)
{
	GLfloat fAspect;
	fAspect = (GLfloat)Launcher::DISPLAY_WIDTH / (GLfloat)Launcher::DISPLAY_HEIGHT;

	//for test
	//glViewport(0, 0, (GLsizei)Launcher::DISPLAY_WIDTH , (GLsizei)h);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();//如果注释，每次调用reshape都会累加结果  
	gluPerspective(30, (GLfloat)Launcher::DISPLAY_WIDTH / (GLfloat)(GLfloat)Launcher::DISPLAY_HEIGHT, 0.1f, 2000.0f);

	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();//如果注释，每次调用reshape都会累加结果  
	glTranslatef(0, 0, 0);
	//
	//viewFrustum->SetPerspective(80.0f, fAspect, 1.0f, 120.0f);
	//projectionMatrix->LoadMatrix(viewFrustum->GetProjectionMatrix());

	float mv[16];
	glGetFloatv(GL_MODELVIEW_MATRIX, mv);
	Launcher::getInstance()->viewMatrix = mv;

	printf("123123");
	//projectionMatrix->LoadMatrix(pm);
	//transformPipeline->SetMatrixStacks(*modelViewMatrix, *projectionMatrix);

}
