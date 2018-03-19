#include "managers\SLTextureManager.h"
#ifdef __APPLE__
#include <glut/glut.h>
#else
#define FREEGLUT_STATIC
#include <GL/glut.h>
#endif

void testCodeInit(){
}

void testCode(){
	SLTextureManager* tMgr = SLTextureManager::getInstance();
	SLTexture* t = tMgr->addTexture("c:\\1.png");
	t->use();

	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glBegin(GL_TRIANGLE_STRIP);
	glColor4f(1, 0, 0, 0.5);
	glTexCoord2f(0, 0);
	glVertex2f(0, 0);

	glTexCoord2f(1, 0);
	glVertex2f(0.5, 0);

	glTexCoord2f(0, 1);
	glVertex2f(0, 0.5);

	glTexCoord2f(1, 1);
	glVertex2f(0.5, 0.5);

	glEnd();
	//glutPostRedisplay();
}


//太阳月亮 原生gl测试=========
#define GL_PI 3.1415f    
GLfloat fMoonRot = 0.0f;
//月亮旋转角度 
GLfloat fEarthRot = 0.0f;
//地球旋转角度 
GLfloat angle = 0.0f;
void renderSunEarthChangeSize(int w, int h){
	GLfloat fAspect;
	if (h == 0)   h = 1;
	glViewport(0, 0, w, h);
	fAspect = (GLfloat)w / (GLfloat)h;
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();  //透视投影   
	gluPerspective(60.0f, fAspect, 1.0f, 400.0f);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
}
void renderSunEarth(){
	glEnable(GL_DEPTH_TEST); //启动深度测试  
	glEnable(GL_CULL_FACE);  //启动选择  
	glFrontFace(GL_CCW);  //透视光照
	glUseProgram(0);

	//增加月球与地球的旋转角度   
	GLfloat lightPos[] = { -50.0f, 50.0f, 100.0f, 1.0f };
	//清除模式   
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);  glPushMatrix();
	//画太阳   
	glTranslatef(0.0f, 0.0f, -150.0f);
	//太阳颜色为红色 
	glColor3ub(255, 0, 0);
	//关闭光照   
	glDisable(GL_LIGHTING);
	//画一个实心体   
	glutSolidSphere(15.0f, 15, 15);
	//打开广州   
	glEnable(GL_LIGHTING);
	glLightfv(GL_LIGHT0, GL_POSITION, lightPos);
	glEnable(GL_LIGHT0);
	//画地球   
	glRotatef(fEarthRot, cos(angle + (GL_PI) / 2), sin(angle + GL_PI / 2), 0.0f);
	//  
	glColor3ub(0, 0, 255);
	//沿x,y,z方向移动的分量   
	glTranslatef(50.0f*cos(angle), 100.0f*sin(angle), 0.0f);

	//绘制地球大小   
	glutSolidSphere(15.0f, 15, 15);
	glColor3ub(0, 255, 0);
	//画月亮   
	//沿某个向量旋转一个角度（angle，x,y,z）  
	glRotatef(fMoonRot, 0.0f, 1.0f, 0.0f);
	glTranslatef(30.0f, 0.0f, 0.0f);
	//月亮旋转角度增加  
	fMoonRot += 0.1f;
	//绘制月亮大小   
	glutSolidSphere(6.0f, 15, 15);
	glPopMatrix();
	//增加地球的旋转角度  
	fEarthRot += 0.1f;
	//刷新绘图   
	//glutSwapBuffers();
	glDisable(GL_DEPTH_TEST); //启动深度测试  
	glDisable(GL_CULL_FACE);  //启动选择  
	glutSwapBuffers();
	glutPostRedisplay();
}
//=========