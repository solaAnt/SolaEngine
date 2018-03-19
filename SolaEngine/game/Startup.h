#include "demo3d\DemoScene3d.h"
#include "demo3d\DemoScene2d.h"

void gameLogic(string path){
	path = "";
	SLSceneManager* sMgr = SLSceneManager::getInstance();

	DemoScene3d* node3d = new DemoScene3d();
	sMgr->runScene3D(node3d);
	//if (true){ return; }

	srand((unsigned)time(NULL));

	SLScene* rScene = sMgr->getRunningScene();
	DemoScene2d * demo2d = new DemoScene2d();
	rScene->addChild(demo2d);

	//init bg
	//SLNode* bgNode = new SLNode();
	//rScene->addChild(bgNode);
}

void Startup(){
	SLTextureManager* tMgr = SLTextureManager::getInstance();
	SLSceneManager* sMgr = SLSceneManager::getInstance();
	SLScene* rScene = new SLScene();
	sMgr->runScene(rScene);

	//_testNode = new SLNode();
	char curPath[MAX_PATH];
	GetCurrentDirectory(MAX_PATH, curPath);
	string path(curPath);
	path.append("\\res\\");

	printf("path=%s\r\n", path.c_str());
	gameLogic(path);

	/*
	SLTexture* t = tMgr->addTexture(path + "1.png");
	_testNode->setTexture(t);
	_testNode->setPosition(300, 100);
	_testNode->setAlpha(0.1f);
	_testNode->setScale(0.5f, 0.5f);
	//_testNode->setRotation(10);

	_testNode1 = new SLNode();
	t = tMgr->addTexture(path + "2.png");
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

	_aaaa->setCentralityX(0.5f);
	_aaaa->setCentralityY(0.5f);

	EventHandler bc = [](void* data){
		float dt = (float)Launcher::getInstance()->getDeltaTime();
		//printf("dt is %f\r\n", dt);
		SLTransformInfo tInfo = _testNode2->getTransformInfo();
		float x = tInfo.tanslateX;
		x = x + 30.0f*dt;
		if (x > 100)
			x = 0.0f;

		_testNode2->setPosition(x, 0);
	};
	BaseHandler* bb = new BaseHandler(bc);
	_testNode2->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, bb);

	t = tMgr->addTexture(path + "6.png");
	auto aaaaa = new SLNode();
	aaaaa->setScale(0.6f, 0.6f);
	aaaaa->setPosition(300, 410);
	aaaaa->setTexture(t);

	EventHandler a = [](void* data){
		TouchEventData* touchEventData = (TouchEventData*)data;
		printf("touchEventData %s\r\n", touchEventData->eventName.c_str());
	};
	aaaaa->setTouchHandler(a);
	aaaaa->removeTouchHnadler();



	EventHandler b = [](void* data){
		float aa = _aaaa->getTransformInfo().rotation;
		aa = aa + 0.2f;
		if (aa > 360)
			aa = 0.0f;
		_aaaa->setRotation(aa);
		float a = aa / 360.0f * 1.5f;
		if (a > 1)
			a = 1.0f;
		_aaaa->setAlpha(a);
	};

	BaseHandler* bb1 = new BaseHandler(b);
	_testNode3->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, bb1);

	rScene->addChild(aaaaa);
	rScene->addChild(_testNode3);
	rScene->addChild(_testNode);
	rScene->addChild(_testNode1);
	rScene->addChild(_testNode2);


	SLTexture* t = tMgr->addTexture(path + "ddd.png");
	_testNode->setTexture(t);
	_testNode->setPosition(0, 0);
	//_testNode->setAlpha(0.1f);
	_testNode->setScale(0.7f, 0.7f);


	EventHandler a = [](void* data){
		TouchEventData* touchEventData = (TouchEventData*)data;
		//printf("touchEventData %s\r\n", touchEventData->eventName.c_str());

		 Vec3 np=_testNode->covWtn(touchEventData->nodePoint);
		 _testNode->test_gr_x = np.x / _testNode->getTexture()->getWidth();
		 _testNode->test_gr_y = np.y / _testNode->getTexture()->getHeight();
	};
	_testNode->setTouchHandler(a);


	_testNode3 = new SLNode();
	t = tMgr->addTexture(path + "4.png");
	_testNode3->setTexture(t);
	_testNode3->setPosition(300, 300);
	rScene->addChild(_testNode3);
	rScene->addChild(_testNode);
	EventHandler b = [](void* data){
		float aa = _testNode3->getTransformInfo().rotation;
		aa = aa + 0.2f;
		if (aa > 360)
			aa = 0.0f;
		_testNode3->setRotation(aa);
		float a = aa / 360.0f * 1.5f;
		if (a > 1)
			a = 1.0f;
		_testNode3->setAlpha(a);
	};

	BaseHandler* bb1 = new BaseHandler(b);
	_testNode3->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, bb1);
	*/
}