#include <GLTools.h>
#include <GLShaderManager.h>
#include <GLFrustum.h>
#include <GLBatch.h>
#include <GLFrame.h>
#include <GLMatrixStack.h>
#include <GLGeometryTransform.h>
#include "events/BaseEvent.h"
#include "TestCode.h"

#ifdef __APPLE__
#include <glut/glut.h>
#else
#define FREEGLUT_STATIC
#include <GL/glut.h>
#endif

GLShaderManager		shaderManager;
GLMatrixStack		modelViewMatrix;
GLMatrixStack		projectionMatrix;
GLFrustum			viewFrustum;
GLGeometryTransform	transformPipeline;

#include <vector>
#include "Launcher.h"
#include "core/SLScene.h"
#include "managers/SLSceneManager.h"

void ProcessMenu(int value)
{
}

void SetupRC()
{
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glEnable(GL_BLEND);
	shaderManager.InitializeStockShaders();
	Launcher::getInstance()->startUp();

	testCodeInit();
}

void OnMouse(int key, int isUp, int x, int y)
{
	printf("isUp is %d,x is %d,y is %d \r\n", isUp, x, y);

	SLPoint p;
	p.x = (float)x;
	//fix by hy:for unknow bug.
	//p.y = ((float)y)*1.02f;
	p.y = (float)y;
	SLPoint wp = Launcher::getInstance()->screen2wp(&p);
	printf("wp.x is %f,wp.y is %f \r\n", wp.x, wp.y);

	BaseEvent* be = BaseEvent::getInstance();
	be->dispathEvent("aaa", &wp);
}

void OnMouseMove(int x,int y){
	//printf("OnMouseMove,x is %d,y is %d \r\n", x, y);

	SLPoint p;
	p.x = (float)x;
	p.y = (float)y;
	SLPoint wp = Launcher::getInstance()->screen2wp(&p);
	//printf("wp.x is %f,wp.y is %f \r\n", wp.x, wp.y);
}

void ShutdownRC(void)
{
}

void ChangeSize(int w, int h)
{
	if (h == 0)
		h = 1;
	glViewport(0, 0, w, h);

	SLSize winSize;
	winSize.w = (float)w;
	winSize.h = (float)h;
	Launcher::getInstance()->setWinSize(winSize);

	//annotate by hy 20160911.It's for 3d.
	//GLfloat fAspect;
	//fAspect = (GLfloat)w/(GLfloat)h;
	//viewFrustum.SetPerspective(80.0f,fAspect,1.0,120.0);

	float z = 10;
	viewFrustum.SetOrthographic(0, (GLfloat)Launcher::DISPLAY_WIDTH, 0, (GLfloat)Launcher::DISPLAY_HEIGHT, -z, z);

	projectionMatrix.LoadMatrix(viewFrustum.GetProjectionMatrix());
	transformPipeline.SetMatrixStacks(modelViewMatrix, projectionMatrix);
}

void RenderScene(void)
{
	Launcher::getInstance()->calculateDeltaTime();
	glClear(GL_COLOR_BUFFER_BIT);

	//if (true){
	//	testCode();
	//	glutSwapBuffers();
	//	return;
	//}

	SLSceneManager* sMgr = SLSceneManager::getInstance();
	SLScene* rScene = sMgr->getRunningScene();
	rScene->draw(modelViewMatrix, transformPipeline, shaderManager);

	glutSwapBuffers();
	glutPostRedisplay();
}

int main(int argc, char *argv[])
{
	//EventHandler a = [](void* data){
	//	int a = *((int*)data);
	//	printf("It's a func,data is %d.\r\n",a);
	//};

	//EventHandler b = [](void* data){
	//	printf("It's b func.\r\n");
	//};

	//BaseEvent* be = BaseEvent::getInstance();
	//string eventName = "test";

	//BaseHandler* aa = new BaseHandler(a);
	//BaseHandler* bb = new BaseHandler(b);

	//be->addEventListener(eventName, aa);
	//be->addEventListener(eventName, bb);

	//int data = 1;
	//void* datap = &data;

	//be->removeListener(eventName, bb);
	//delete bb;

	//be->dispathEvent(eventName, datap);

	gltSetWorkingDirectory(argv[0]);
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
	glutInitWindowSize(Launcher::DISPLAY_WIDTH, Launcher::DISPLAY_HEIGHT);
	glutCreateWindow(Launcher::APPLICATION_TITLE);
	glutReshapeFunc(ChangeSize);
	//glutSpecialFunc(OnKey);
	glutMouseFunc(OnMouse);
	glutMotionFunc(OnMouseMove);
	glutDisplayFunc(RenderScene);

	glutCreateMenu(ProcessMenu);
	glutAddMenuEntry("GL_NEAREST", 0);
	glutAddMenuEntry("GL_LINEAR", 1);
	glutAddMenuEntry("GL_NEAREST_MIPMAP_NEAREST", 2);
	glutAddMenuEntry("GL_NEAREST_MIPMAP_LINEAR", 3);
	glutAddMenuEntry("GL_LINEAR_MIPMAP_NEAREST", 4);
	glutAddMenuEntry("GL_LINEAR_MIPMAP_LINEAR", 5);

	glutAttachMenu(GLUT_RIGHT_BUTTON);

	GLenum err = glewInit();
	if (GLEW_OK != err) {
		fprintf(stderr, "GLEW Error: %s\n", glewGetErrorString(err));
		return 1;
	}

	SetupRC();
	glutMainLoop();
	ShutdownRC();

	return 0;
}



