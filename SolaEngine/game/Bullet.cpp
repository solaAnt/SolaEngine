/*create by hy 20171209*/
#include "Bullet.h"
#include "../../managers/SLTextureManager.h"
#include "../Launcher.h"
#include<stdio.h>
#include<stdlib.h>
#define Random(x) (rand() % x)

Bullet::Bullet() :SLNode(){
	this->_init();
}

void Bullet::removeALLEvent(){
	this->removeListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);
}

void Bullet::_init(){
	SLNode::_init();

	SLTextureManager* tMgr = SLTextureManager::getInstance();
	SLNode* img = new SLNode();
	this->addChild(img);

	SLTexture* bgTexture = tMgr->addTexture("bullet.png");
	img->setTexture(bgTexture);
	img->setCentralityX(0.5f);
	img->setCentralityY(0.5f);

	EventHandler bc = [this](void* data){
		float dt = (float)Launcher::getInstance()->getDeltaTime();
		SLTransformInfo tInfo = this->getTransformInfo();
		float y = tInfo.tanslateY;

		if (y >= 800.0f){
			y = 800.0f;
			this->removeListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);
		}
		else{
			y += 1.0f;
			this->setPosition(tInfo.tanslateX, y);
		}
	};

	_bb = new BaseHandler(bc);
	this->addEventListener(BaseEvent::EVENT_ON_NODE_UPDATED, _bb);
}