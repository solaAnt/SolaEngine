#include "DemoScene3d.h"
#include "../../core/3D/SLObjNode.h"
#include "../../core/3D/SLNode3d.h"
#include "../../core/render/SLCamera.h"
#include "../../managers/SLCameraManager.h"
#include "../../core/SLPoint.h";
#include "../../events/TouchEvent.h"
#include "../../Launcher.h"
#include "../../extends/math/Vec3.h"
#include "../../managers/SLShaderManager.h"
#include "../../core/misc/SLFileUtils.h"
#include "../../core/3D/SLBone.h"
#include "../../core/3D/SLMAYANode.h"

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <map>

std::map<string, SLBone*> _bones;

DemoScene3d::DemoScene3d(){
	_init();
}

SLNode3d* _node1;
SLNode3d* _node2;
SLNode3d* _node3;
bool flag = false;
void DemoScene3d::_init(){
	//camera
	SLCameraManager* cameraMgr = SLCameraManager::getInstance();
	SLCamera* mainCamera = cameraMgr->getMainCamera();
	mainCamera->setPosition(0, 0, 5);
	//mainCamera->setRotation(90, 1, 0, 0);

	//init control
	EventHandler a = [&](void* data){
		//Mat4 tmp;
		//Vec4 tmpvec(0,0,1,0);
		//Vec4 ret = tmp*tmpvec;
		//printf("ret1 x=%f y=%f z=%f \r\n", ret.x, ret.y, ret.z);
		//tmp.rotateY(MATH_DEG_TO_RAD(90));
		//ret = tmp*tmpvec;
		//printf("ret2 x=%f y=%f z=%f \r\n", ret.x, ret.y, ret.z);

		SLPoint* p = (SLPoint*)(data);
		SLCameraManager* cameraMgr = SLCameraManager::getInstance();
		SLCamera* mainCamera = cameraMgr->getMainCamera();

		float dis = Launcher::DISPLAY_WIDTH / 4;
		float moveDis = 0.1f*0.1f;
		mainCamera->getForward();
		moveDis *= 20.0f;
		auto tinfo = this->getTransformInfo();
		if (p->x<dis){

			this->setRotation(tinfo.rotationY - moveDis, 0, 1, 0);
		}
		else if (p->x>dis * 3)
		{
			this->setRotation(tinfo.rotationY + moveDis, 0, 1, 0);
		}
		else{

			//if (true)return;
			Vec4 forward = mainCamera->getForward();
			if (p->y > Launcher::DISPLAY_HEIGHT / 2){
				this->setRotation(tinfo.rotationX + moveDis, 1, 0, 0);
			}
			else
			{
				this->setRotation(tinfo.rotationX - moveDis, 1, 0, 0);
			}

		}
	};

	TouchEvent* event = TouchEvent::getInstance();
	BaseHandler* touchHnadler = new BaseHandler(a);
	event->addEventListener(TouchEvent::EVENT_ON_TOUCH_MOVE, touchHnadler);
	event->addEventListener(TouchEvent::EVENT_ON_TOUCH_BEGIN, touchHnadler);

	//
	//====
	//SLMAYANode* tmp_node = new SLMAYANode();
	//_node1 = tmp_node;
	//this->addChild(tmp_node);
	//tmp_node->setPosition(0, -0.5f, 0);
	//tmp_node->load(string("maya\\qswz_action.ma"));
	//tmp_node->playAnimation();
	//SLMAYANode* tmp_node2 = new SLMAYANode();
	//_node2 = tmp_node2;
	//this->addChild(tmp_node2);
	//tmp_node2->setPosition(-1.5f, 0.5f, 0);
	//tmp_node2->load(string("maya\\fashi.ma"));

	//SLMAYANode* node3 = new SLMAYANode();
	//_node3 = node3;
	//this->addChild(node3);
	//node3->setPosition(1.5f, 0.5f, 0);
	//node3->load(string("maya\\niao.ma"));

	this->setPosition(0, -0.1f, -1.0f);
	EventHandler c = [&](void* data){
		float diff = 0.5f;
		auto tInfo = _node1->getTransformInfo();
		_node1->setRotation(tInfo.rotationY + diff, 0, 1, 0);

		//auto tInfo2 = _node2->getTransformInfo();
		//_node2->setRotation(tInfo2.rotationY + diff, 0, 1, 0);

		//auto tInfo3 = _node3->getTransformInfo();
		//_node3->setRotation(tInfo3.rotationY + diff, 0, 1, 0);
		//if (tInfo.rotationZ >= 60 && flag == false){
		//	flag = true;
		//}
		//else if (tInfo.rotationZ <= -60 && flag == true){
		//	flag = false;
		//}
		//if (!flag)
		//	_bone2->setRotation(tInfo.rotationZ + 0.05f, 0, 0, 1);
		//else
		//	_bone2->setRotation(tInfo.rotationZ - 0.05f, 0, 0, 1);
		////_bone2->setRotation(tInfo.rotationY + 0.1f, 0, 1, 0);

		//auto tInfo2 = _bone5->getTransformInfo();
		//_bone5->setRotation(tInfo2.rotationX + 0.1f, 1, 0, 0);
	};

	//BaseHandler* updateHnadler = new BaseHandler(c);
	//event->addEventListener(TouchEvent::EVENT_ON_NODE_UPDATED, updateHnadler);
	//if (true)return;

	SLNode3d* kellenNode = new SLNode3d();
	kellenNode->setPosition(0.5f, -1.0f, 3.2f);
	this->addChild(kellenNode);

	SLObjNode* kellenbody = new SLObjNode();
	kellenbody->load(string("kallen_body"));
	kellenNode->addChild(kellenbody);

	SLObjNode* kallen_face = new SLObjNode();
	kallen_face->load(string("kallen_face"));
	kellenNode->addChild(kallen_face);

	SLObjNode* kallen_hair = new SLObjNode();
	kallen_hair->load(string("kallen_hair"));
	kellenNode->addChild(kallen_hair);

	//kiana=====
	SLNode3d* kiana = new SLNode3d();
	kiana->setPosition(-0.5f, -1.0f, 3.2f);
	this->addChild(kiana);

	SLObjNode* kiana_body = new SLObjNode();
	kiana_body->load(string("kiana_body"));
	kiana->addChild(kiana_body);

	SLObjNode* kiana_face = new SLObjNode();
	kiana_face->load(string("kiana_face"));
	kiana->addChild(kiana_face);

	SLObjNode* kiana_hair = new SLObjNode();
	kiana_hair->load(string("kiana_hair"));
	kiana->addChild(kiana_hair);

	SLObjNode* kiana_wing = new SLObjNode();
	kiana_wing->load(string("kiana_wing"));
	kiana->addChild(kiana_wing);


	//ship_0
	SLNode3d* ship = new SLNode3d();
	ship->setPosition(0.0f, -1.0f, -3.0f);
	this->addChild(ship);

	SLObjNode* ship_0 = new SLObjNode();
	ship_0->load(string("bh3//ship_0"));
	ship->addChild(ship_0);

	SLObjNode* ship_3 = new SLObjNode();
	ship_3->load(string("bh3//ship_3"));
	ship->addChild(ship_3);

	SLObjNode* ship_b_01 = new SLObjNode();
	ship_b_01->load(string("bh3//ship_b_01"));
	ship->addChild(ship_b_01);

	SLObjNode* ship_b_02 = new SLObjNode();
	ship_b_02->load(string("bh3//ship_b_02"));
	ship->addChild(ship_b_02);

	SLObjNode* ship_b_03 = new SLObjNode();
	ship_b_03->load(string("bh3//ship_b_03"));
	ship->addChild(ship_b_03);

	SLObjNode* ship_sky = new SLObjNode();
	ship_sky->load(string("bh3//ship_sky"));
	//ship_sky->setPosition(0, 50,0);
	SLShaderManager* smgr = SLShaderManager::getInstance();
	//ship_sky->setShader(smgr->addShader(string("test")));
	ship->addChild(ship_sky);
}