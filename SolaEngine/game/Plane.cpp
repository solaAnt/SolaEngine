/*create by hy 20171209*/
#include "Plane.h"
#include "../../managers/SLTextureManager.h"
#include "../Launcher.h"
#include<stdio.h>
#include<stdlib.h>
#define Random(x) (rand() % x)

Plane::Plane():SLNode(){
	this->_init();
}

void Plane::removeALLEvent(){
	this->removeListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);
}

float Plane::getHp(){
	return _hp;
}

void Plane::updateHp(float diff){
	_hp -= diff;
	if (_hp < 0){
		_hp = 0;
	}

	_hpImg->setScale(_hp / 100.0f, 1.0f);
}

void Plane::_init(){
	SLNode::_init();

	SLNode* planeImg = new SLNode();
	this->addChild(planeImg);

	SLTextureManager* tMgr = SLTextureManager::getInstance();

	SLTexture* bgTexture = tMgr->addTexture("plane_01.png");
	planeImg->setTexture(bgTexture);
	planeImg->setCentralityX(0.5f);
	planeImg->setCentralityY(0.5f);

	int a = Random(450) + 50;
	this->setPosition(a, 800);
	EventHandler bc = [this](void* data){
		float dt = (float)Launcher::getInstance()->getDeltaTime();
		SLTransformInfo tInfo = this->getTransformInfo();
		float y = tInfo.tanslateY;

		if (y <= -100.0f){
			y = -100.0f;
			this->removeListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);
		}
		else{
			y -= 0.2f;
			this->setPosition(tInfo.tanslateX, y);
		}
	};

	_bb = new BaseHandler(bc);
	this->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);

	//init hp
	SLTexture* hpt = tMgr->addTexture("hp.png");
	SLNode* hp = new SLNode();
	_hpImg = hp;
	hp->setTexture(hpt);
	this->addChild(hp);
	hp->setPosition(-40.0f, 50.0f);
}