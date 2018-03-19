#include "DemoScene2d.h"
//#include "../../core/3D/SLObjNode.h"
//#include "../../core/3D/SLNode3d.h"
//#include "../../core/render/SLCamera.h"
//#include "../../managers/SLCameraManager.h"
//#include "../../core/SLPoint.h";
//#include "../../events/TouchEvent.h"
//#include "../../Launcher.h"
//#include "../../extends/math/Vec3.h"
//
//#include "ft2build.h"
//#include FT_FREETYPE_H  
//#include <iostream>  

#include "../../managers/SLTextureManager.h"
#include "../../managers/SLSceneManager.h"
#include "../../core/2D/SLFontTTF.h"
#include "../../Launcher.h"
#include "../../events/TouchEvent.h"

#include   <time.h> 
#include "../Plane.h"
#include "../Bullet.h"
#include <math.h>

float distance(float x, float y, float m, float n)
{
	double h;
	h = sqrt((x - m)*(x - m) + (y - n)*(y - n));
	return h;
}

#define Random(x) (rand() % x)

SLNode* _bgNodes[3];
SLNode* _plane;

SLNode* _planeNode;
SLNode* _uiNode;
SLNode* _sn;
SLFontTTF* fpsss;
vector<Plane*> _enplanes;

float _createEnemyDuration = 5;
float _createEnemyTime = 2;

vector<Bullet*> _bullets;
float _createBulletTime = 0.5f;

DemoScene2d::DemoScene2d(){
	_init();
}
DemoScene2d::~DemoScene2d(){
}

#include <sstream>
std::string ws2s(const std::wstring& ws)
{
	std::string curLocale = setlocale(LC_ALL, NULL);        // curLocale = "C";
	setlocale(LC_ALL, "chs");
	const wchar_t* _Source = ws.c_str();
	size_t _Dsize = 2 * ws.size() + 1;
	char *_Dest = new char[_Dsize];
	memset(_Dest, 0, _Dsize);
	wcstombs(_Dest, _Source, _Dsize);
	std::string result = _Dest;
	delete[]_Dest;
	setlocale(LC_ALL, curLocale.c_str());
	return result;
}

std::wstring s2ws(const std::string& s)
{
	setlocale(LC_ALL, "chs");
	const char* _Source = s.c_str();
	size_t _Dsize = s.size() + 1;
	wchar_t *_Dest = new wchar_t[_Dsize];
	wmemset(_Dest, 0, _Dsize);
	mbstowcs(_Dest, _Source, _Dsize);
	std::wstring result = _Dest;
	delete[]_Dest;
	setlocale(LC_ALL, "C");
	return result;
}
void DemoScene2d::_init(){
	//if (true)return;
	//if (true)return;
	SLTextureManager* tMgr = SLTextureManager::getInstance();
	SLSceneManager* sMgr = SLSceneManager::getInstance();
	SLScene* rScene = sMgr->getRunningScene();

	int scaleRate = 1.8f;
	SLNode* uinode = new SLNode();
	SLTexture* uitex = tMgr->addTexture("demoui\\testmain.png");
	uinode->setTexture(uitex);
	uinode->setScale(scaleRate,scaleRate);
	rScene->addChild(uinode);

	SLFontTTF* fps_txt = new SLFontTTF();
	rScene->addChild(fps_txt);
	fps_txt->setPosition(0, 50 * scaleRate);
	fps_txt->setContent(wstring(L"当前引擎帧率为  FPS"), 10, Vec4(1, 1, 1, 1));
	
	SLFontTTF* exp_txt = new SLFontTTF();
	rScene->addChild(exp_txt);
	exp_txt->setPosition(20 * scaleRate, 470 * scaleRate);
	exp_txt->setScale(0.7*scaleRate, 0.7*scaleRate);
	exp_txt->setContent(wstring(L"EXP"), 10, Vec4(0, 0.5, 1, 1));

	SLFontTTF* lv_txt = new SLFontTTF();
	rScene->addChild(lv_txt);
	lv_txt->setPosition(20 * scaleRate, 500 * scaleRate);
	lv_txt->setScale(scaleRate, scaleRate);
	lv_txt->setContent(wstring(L"LV30"), 10, Vec4(1, 1, 1, 1));

	SLFontTTF* name_txt = new SLFontTTF();
	rScene->addChild(name_txt);
	name_txt->setPosition(100 * scaleRate, 490 * scaleRate);
	name_txt->setScale(0.6*scaleRate, 0.6*scaleRate);
	name_txt->setContent(wstring(L"小丧"), 10, Vec4(1, 1, 1, 1));


	SLFontTTF* countTxt = new SLFontTTF();
	rScene->addChild(countTxt);
	countTxt->setPosition(562 * scaleRate, 475 * scaleRate);
	countTxt->setScale(0.7*scaleRate, 0.7*scaleRate);
	countTxt->setContent(wstring(L"35/80"), 10, Vec4(1, 1, 1, 1));


	SLFontTTF* countTxt2 = new SLFontTTF();
	rScene->addChild(countTxt2);
	countTxt2->setPosition(690 * scaleRate, 475 * scaleRate);
	countTxt2->setScale(0.7*scaleRate, 0.7*scaleRate);
	countTxt2->setContent(wstring(L"80061"), 10, Vec4(1, 1, 1, 1));

	
	fpsss = new SLFontTTF();
	rScene->addChild(fpsss);
	fpsss->setPosition(300, 50 * scaleRate);
	fpsss->setContent(wstring(L"0"), 10, Vec4(1, 1, 1, 1));

	EventHandler bc = [=](void* data){
		float dt = (float)Launcher::getInstance()->getDeltaTime();
		int fps = 1 / dt;

		stringstream ss;
		ss << fps;
		string sss;
		ss >> sss;
		wstring wss = s2ws(sss);

		string a = "xxxx";
		wstring b(sss.begin(), sss.end());

		fpsss->setContent(b, 10, Vec4(1, 1, 1, 1));
	};

	BaseHandler* _bb = new BaseHandler(bc);
	this->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);


	if (true)return;
	_planeNode = new SLNode();
	rScene->addChild(_planeNode);

	_uiNode = new SLNode();
	rScene->addChild(_uiNode);


	SLTexture* bgTexture = tMgr->addTexture("bg.png");
	for (size_t i = 0; i < 3; i++)
	{
		SLNode* bgImg = new SLNode();
		_bgNodes[i] = bgImg;
		bgImg->setTexture(bgTexture);
		bgImg->setScale(1.0f, 1.01f);
		//bgNode->addChild(bgImg);
		bgImg->setPosition(0, i*bgTexture->getHeight());
	}

	//init my plane
	SLTexture* planeTex = tMgr->addTexture("plane.png");
	_plane = new SLNode();
	_plane->setTexture(planeTex);
	_plane->setCentralityX(0.5f);
	_plane->setCentralityX(0.5f);
	_plane->setPosition(200.0f, 0.0f);
	_planeNode->addChild(_plane);

	//init boom
	SLTexture* boomt = tMgr->addTexture("boom.png");
	SLTexture* boomt1 = tMgr->addTexture("boom1.png");
	SLNode* boomNode = new SLNode();
	_uiNode->addChild(boomNode);
	boomNode->setTexture(boomt);
	boomNode->setPosition(20.0f, 20.0f);

	boomNode = new SLNode();
	_uiNode->addChild(boomNode);
	boomNode->setTexture(boomt1);
	boomNode->setPosition(20.0f, 200.0f);

	//init my hp
	SLTexture* hplt2 = tMgr->addTexture("hp2.png");
	SLNode* hp2 = new SLNode();
	_uiNode->addChild(hp2);
	hp2->setTexture(hplt2);
	hp2->setPosition(30.0f, 700.0f);

	SLTexture* hplt = tMgr->addTexture("hp_lab.png");
	SLNode* hplab = new SLNode();
	_uiNode->addChild(hplab);
	hplab->setTexture(hplt);
	hplab->setPosition(0.0f, 700.0f);

	//init logo
	SLTexture* st = tMgr->addTexture("start.png");
	SLNode* sn = new SLNode();
	//_uiNode->addChild(sn);
	sn->setTexture(st);
	_sn = sn;

	//init enemy
	//Plane* en = new Plane();
	//_planeNode->addChild(en);
	//_enplanes.push_back(en);

	SLFontTTF* s = new SLFontTTF();
	rScene->addChild(s);
	s->setPosition(300, 300);
	s->setContent(wstring(L"我是测试内容呀"),10,Vec4(1,1,1,1));

	//EventHandler bc = [](void* data){
	//	float dt = (float)Launcher::getInstance()->getDeltaTime();

	//	//start img
	//	float snA = _sn->getAlpha();
	//	snA -= 0.0005f;
	//	if (snA <= 0.0f){
	//		snA = 0.0f;
	//	}
	//	_sn->setAlpha(snA);


	//	SLSceneManager* sMgr = SLSceneManager::getInstance();
	//	SLScene* rScene = sMgr->getRunningScene();

	//	//create Bullet
	//	_createBulletTime -= dt;
	//	if (_createBulletTime <= 0){
	//		_createBulletTime = 0.3f;
	//		Bullet* bullet = new Bullet();
	//		_planeNode->addChild(bullet);

	//		SLTransformInfo tInfo = _plane->getTransformInfo();

	//		bullet->setPosition(tInfo.tanslateX, tInfo.tanslateY + 100.0f);
	//		_bullets.push_back(bullet);
	//	}

	//	//create enemy
	//	_createEnemyTime -= dt;
	//	if (_createEnemyTime <= 0){
	//		_createEnemyTime = Random(2) + 1;

	//		Plane* en = new Plane();
	//		_planeNode->addChild(en);
	//		_enplanes.push_back(en);
	//	}

	//	//update bg position
	//	for (int i = 0; i<3; i++){
	//		SLNode* bgImg = _bgNodes[i];
	//		SLTransformInfo tInfo = bgImg->getTransformInfo();
	//		float y = tInfo.tanslateY;

	//		float txh = bgImg->getTexture()->getHeight();
	//		if (y >= txh){
	//			bgImg->setPosition(0, -txh);
	//		}
	//		else{
	//			y = y + 0.1f;
	//			bgImg->setPosition(0, y);
	//		}
	//	}

	//	//caculate coolide
	//	for (size_t i = 0; i < _enplanes.size(); i++)
	//	{
	//		Plane* node = _enplanes[i];
	//		SLTransformInfo ptInfo = node->getTransformInfo();
	//		for (size_t j = 0; j < _bullets.size(); j++)
	//		{
	//			Bullet* bnode = _bullets[j];
	//			SLTransformInfo btInfo = bnode->getTransformInfo();

	//			float dis = distance(ptInfo.tanslateX, ptInfo.tanslateY, btInfo.tanslateX, btInfo.tanslateY);
	//			if (dis<60.0f){
	//				_bullets.erase(_bullets.begin() + j);
	//				bnode->removeALLEvent();
	//				bnode->removeSelf();

	//				node->updateHp(20.0f);
	//				break;
	//			}
	//		}

	//		if (node->getHp() <= 0.0f){
	//			_enplanes.erase(_enplanes.begin() + i);
	//			node->removeALLEvent();
	//			node->removeSelf();
	//		}
	//	}

	//	//remove plane
	//	for (size_t i = 0; i < _enplanes.size(); i++)
	//	{
	//		Plane* node = _enplanes[i];
	//		SLTransformInfo tInfo = node->getTransformInfo();
	//		if (tInfo.tanslateY <= -100.0f){
	//			_enplanes.erase(_enplanes.begin() + i);
	//			node->removeSelf();
	//		}
	//	}

	//	//remove bullet
	//	for (size_t i = 0; i < _bullets.size(); i++)
	//	{
	//		Bullet* node = _bullets[i];
	//		SLTransformInfo tInfo = node->getTransformInfo();
	//		if (tInfo.tanslateY >= 800.0f){
	//			_bullets.erase(_bullets.begin() + i);
	//			node->removeSelf();
	//		}
	//	}
	//};
	//BaseHandler* bb = new BaseHandler(bc);
	//rScene->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, bb);

	////init control
	//EventHandler a = [&](void* data){
	//	SLPoint* p = (SLPoint*)(data);

	//	Vec3 nodePos = _plane->covWtn(Vec3(p->x, p->y, 0));
	//	SLTransformInfo tInfo = _plane->getTransformInfo();
	//	float x = tInfo.tanslateX;
	//	float y = tInfo.tanslateY;
	//	float diff = 0.5f;
	//	if (nodePos.x < 0){
	//		x -= diff;
	//	}
	//	else if (nodePos.x > 0){
	//		x += diff;
	//	}

	//	if (nodePos.y < 0){
	//		y -= diff;
	//	}
	//	else if (nodePos.y > 0){
	//		y += diff;

	//	}
	//	_plane->setPosition(x, y);
	//};

	//TouchEvent* event = TouchEvent::getInstance();
	//BaseHandler* touchHnadler = new BaseHandler(a);
	//event->addEventListener(TouchEvent::EVENT_ON_TOUCH_MOVE, touchHnadler);
}