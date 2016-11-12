#include "Launcher.h"
#include "managers/SLSceneManager.h"
#include "managers/SLTextureManager.h"
#include "core/SLScene.h"
#include <sys/timeb.h>

Launcher* Launcher::_instance = 0;

const char* Launcher::APPLICATION_TITLE = "SolaEngine(Ver beta)      点击窗口，测试基础动态效果和点击响应。";
int Launcher::DISPLAY_WIDTH = 800;
int Launcher::DISPLAY_HEIGHT = 500;

Launcher::Launcher(){
}

Launcher::~Launcher(){
}

Launcher* Launcher::getInstance(){
	if (_instance == nullptr){
		_instance = new Launcher();
	}

	return _instance;
}

void Launcher::calculateDeltaTime()
{
	clock_t now = clock();
	_deltaTime=(double)(now - _lastMainLoopTime) / CLOCKS_PER_SEC;
	//printf("_deltaTime %f \r\n", _deltaTime);
	_lastMainLoopTime = now;
}

void Launcher::initRC(){
}

void Launcher::setWinSize(SLSize size){
	_winSize = size;
}

SLPoint Launcher::screen2wp(SLPoint* screenPoint){
	SLSize winSize = _winSize;
	float winW = winSize.w;
	float winH = winSize.h;

	float wr = screenPoint->x / winW;
	float hr = screenPoint->y / winH;
	wr *= 1.01f;
	hr *= 1.02f;
	//fix by hy:for unknow bug.
	//p.y = ((float)y)*1.02f;

	SLPoint result;
	result.x = wr*DISPLAY_WIDTH;
	result.y = (1-hr)*DISPLAY_HEIGHT;

	return result;
}

SLNode* _aaaa;
void Launcher::startUp(){
	_lastMainLoopTime = clock();

	SLTextureManager* tMgr = SLTextureManager::getInstance();
	SLSceneManager* sMgr = SLSceneManager::getInstance();
	SLScene* rScene = new SLScene();
	sMgr->runScene(rScene);

	SLNode* _testNode;
	SLNode* _testNode1;
	SLNode* _testNode2;

	_testNode = new SLNode();

	char curPath[MAX_PATH];
	GetCurrentDirectory(MAX_PATH, curPath);
	string path(curPath);
	path.append("\\res\\");

	printf("path=%s\r\n", path.c_str());

	SLTexture* t = tMgr->addTexture(path + "1.png");
	_testNode->setTexture(t);
	_testNode->setPosition(300, 100);
	_testNode->setAlpha(0.1f);
	_testNode->setScale(0.5f, 0.5f);
	//_testNode->setRotation(10);

	_testNode1 = new SLNode();
	t = tMgr->addTexture(path+"2.png");
	_testNode1->setTexture(t);
	_testNode1->setPosition(200, 200);
	//_testNode1->setScale(0.3f, 0.3f);
	//_testNode1->setRotation(45);

	_testNode2 = new SLNode();
	t = tMgr->addTexture(path + "3.png");
	_testNode2->setTexture(t);
	_testNode2->setPosition(0, 300);
	//_testNode2->setScale(0.2f, 0.2f);
	//_testNode2->setRotation(60);

	SLNode* _testNode3 = new SLNode();
	t = tMgr->addTexture(path + "4.png");
	_testNode3->setTexture(t);
	_testNode3->setPosition(0, 0);
	//_testNode3->setScale(0.5f, 0.5f);
	//_testNode3->setRotation(0);
	_aaaa = _testNode1;

	EventHandler b = [](void* data){
		float aa=_aaaa->getRotation();
		aa = aa + 0.2f;
		if (aa > 360)
			aa = 0.0f;
		_aaaa->setRotation(aa);
		float a = aa / 360.0f * 1.5;
		if (a > 1)
			a = 1.0f;
		_aaaa->setAlpha(a);
	};

	BaseHandler* bb = new BaseHandler(b);
	_testNode3->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, bb);

	t = tMgr->addTexture(path + "6.png");
	auto aaaaa = new SLNode();
	aaaaa->setScale(0.6f, 0.6f);
	aaaaa->setPosition(300, 410);
	aaaaa->setTexture(t);


	rScene->addChild(aaaaa);
	rScene->addChild(_testNode3);
	rScene->addChild(_testNode);
	rScene->addChild(_testNode1);
	rScene->addChild(_testNode2);
	
}