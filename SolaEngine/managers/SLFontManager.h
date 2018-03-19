#ifndef __SLFontManager_h__
#define __SLFontManager_h__

#include <string>
#include <vector>
#include <map>
#include "../extends/freetype/CFontManager.h"
#include "../core/misc/SLFileUtils.h"

using namespace std;

class SLFontManager
{
public:
	SLFontManager(){ 
		_FontManager = new CFontManager();
		_FontManager->initialize();
		initFont(string("【开开】晚安体.ttf"));
	};

	~SLFontManager(){ delete _FontManager; _FontManager = nullptr; };

	static SLFontManager* getInstance(){ 
		if (_instance == nullptr)
			_instance = new SLFontManager();
		return _instance;
	}

public:
	CFontManager* getFontMgr(){ return _FontManager; }

	void initFont(string& ttfPath){
		SLFileUtils* fmgr = SLFileUtils::getInstance();
		char_font = _FontManager->createFont(fmgr->getFullPatch(string(ttfPath)).c_str(), 0, 32, false, false, true);

		if (char_font == 0)
		{
			printf("createFont failed\n");
		}
	}


public:
	int char_font;

private:
	static SLFontManager* _instance;
	CFontManager* _FontManager;
	
};

#endif