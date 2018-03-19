//#ifndef __CFontManager_H__
//#define __CFontManager_H__
//
//// OpenGL library
////#include <gl/glut.h>
//#include <GL/glut.h>
//
//// Std misc
//#include <map>
//#include <vector>
//
//// FreeType library
//#include <ft2build.h>
//#include FT_FREETYPE_H
//#include FT_BITMAP_H
//#include FT_OUTLINE_H
//
//
//#ifdef CreateFont
//#undef CreateFont
//#endif
//
//typedef unsigned char byte;
//
//class CFontManager
//{
//public:
//	CFontManager();
//	~CFontManager();
//
//	bool initialize(void);
//	void release(void);
//	int createFont(const char *filename, int face, int tall, bool bold, bool italic, bool antialias);
//	bool getCharInfo(int font_index, int code, int *wide, int *tall, int *horiBearingX, int *horiBearingY, int *horiAdvance, GLuint *texture, float coords[]);
//	int getFontTall(int font_index);
//
//private:
//	struct glyphMetrics
//	{
//		int    width;
//		int    height;
//		int    horiBearingX;
//		int    horiBearingY;
//		int    horiAdvance;
//		//int    vertBearingX;
//		//int    vertBearingY;
//		//int    vertAdvance;
//	};
//
//	class CFont
//	{
//	public:
//		CFont();
//		~CFont();
//
//		bool create(FT_Library library, const char *filename, FT_Long face_index, int tall, bool bold, bool italic, bool antialias);
//		void release(void);
//		bool getCharInfo(int code, glyphMetrics *metrics, GLuint *texture, float coords[]);
//		int getFontTall(void);
//
//	private:
//		bool loadChar(int code, glyphMetrics *metrics);
//
//		class CChar
//		{
//		public:
//			void setInfo(glyphMetrics *metrics);
//			void getInfo(glyphMetrics *metrics, GLuint *texture, float coords[]);
//
//		public:
//			int                m_code;
//			GLuint            m_texture;
//			float            m_coords[4];    // left top right bottom
//
//		private:
//			glyphMetrics    m_metrics;
//		};
//
//		class CPage
//		{
//		public:
//			CPage();
//			~CPage();
//
//			bool append(int wide, int tall, byte *rgba, float coords[]);
//			GLuint getTexture(void);
//
//		private:
//			GLuint    m_texture;
//			int        m_wide;
//			int        m_tall;
//			int        m_posx;
//			int        m_posy;
//			int        m_maxCharTall;
//		};
//
//		typedef std::map<int, CChar *> TCharMap;
//
//		FT_Library                m_library;
//		FT_Face                    m_face;
//		bool                    m_antialias;
//		bool                    m_bold;
//		int                        m_tall;
//		int                        m_rgbaSize;
//		GLubyte                    *m_rgba;
//		TCharMap                m_chars;
//		std::vector<CPage *>    m_pages;
//	};
//
//	FT_Library                m_library;
//	std::vector<CFont *>    m_fonts;
//};
//
//
//
////------------------------------------------------------------
//// CFont
////------------------------------------------------------------
//CFontManager::CFont::CFont()
//{
//	m_face = NULL;
//	m_rgba = NULL;
//	m_antialias = false;
//	m_bold = false;
//	m_tall = 0;
//}
//
//CFontManager::CFont::~CFont()
//{
//	release();
//}
//
//bool CFontManager::CFont::create(FT_Library library, const char *filename, FT_Long face_index, int tall, bool bold, bool italic, bool antialias)
//{
//	FT_Error err;
//
//	if (tall > 256)
//	{
//		// Bigger than a page size
//		return false;
//	}
//
//	if ((err = FT_New_Face(library, filename, face_index, &m_face)) != FT_Err_Ok)
//	{
//		printf("FT_New_Face() Error %d\n", err);
//		return false;
//	}
//
//	if ((err = FT_Set_Pixel_Sizes(m_face, 0, tall)) != FT_Err_Ok)
//	{
//		printf("FT_Set_Pixel_Sizes() Error %d\n", err);
//		return false;
//	}
//
//	m_rgbaSize = (tall * 2) * tall * 4;
//
//	m_rgba = new GLubyte[m_rgbaSize];
//
//	if (m_rgba == NULL)
//	{
//		return false;
//	}
//
//	m_library = library;
//	m_antialias = antialias;
//	m_bold = bold;
//	m_tall = tall;
//
//	if (italic)
//	{
//		FT_Matrix m;
//		m.xx = 0x10000L;
//		m.xy = 0.5f * 0x10000L;
//		m.yx = 0;
//		m.yy = 0x10000L;
//		FT_Set_Transform(m_face, &m, NULL);
//	}
//
//	return true;
//}
//
//void CFontManager::CFont::release(void)
//{
//	FT_Error err;
//
//	if (m_face)
//	{
//		if ((err = FT_Done_Face(m_face)) != FT_Err_Ok)
//		{
//			printf("FT_Done_Face() Error %d\n", err);
//		}
//		m_face = NULL;
//	}
//
//	if (m_rgba)
//	{
//		delete[] m_rgba;
//		m_rgba = NULL;
//	}
//
//	for (TCharMap::iterator it = m_chars.begin(); it != m_chars.end(); it++)
//	{
//		delete it->second;
//		it->second = NULL;
//	}
//
//	m_chars.clear();
//
//	for (size_t i = 0; i < m_pages.size(); i++)
//	{
//		delete m_pages[i];
//		m_pages[i] = NULL;
//	}
//
//	m_pages.clear();
//}
//
//bool CFontManager::CFont::getCharInfo(int code, glyphMetrics *metrics, GLuint *texture, float coords[])
//{
//	// fast find it
//	TCharMap::iterator it = m_chars.find(code);
//
//	if (it != m_chars.end())
//	{
//		it->second->getInfo(metrics, texture, coords);
//		return true;
//	}
//
//	glyphMetrics gm;
//
//	if (loadChar(code, &gm) == false)
//	{
//		return false;
//	}
//
//	CChar *ch = new CChar();
//
//	ch->m_code = code;
//	ch->setInfo(&gm);
//
//	for (size_t i = 0; i < m_pages.size(); i++)
//	{
//		CPage *page = m_pages[i];
//
//		if (page->append(gm.width, gm.height, m_rgba, ch->m_coords))
//		{
//			ch->m_texture = page->getTexture();
//			ch->getInfo(metrics, texture, coords);
//			m_chars.insert(TCharMap::value_type(code, ch));
//			return true;
//		}
//	}
//
//	CPage *page = new CPage();
//
//	if (page->append(gm.width, gm.height, m_rgba, ch->m_coords))
//	{
//		ch->m_texture = page->getTexture();
//		ch->getInfo(metrics, texture, coords);
//		m_chars.insert(TCharMap::value_type(code, ch));
//		m_pages.push_back(page);
//		return true;
//	}
//
//	delete ch;
//	delete page;
//
//	return false;
//}
//
//int CFontManager::CFont::getFontTall(void)
//{
//	return m_tall;
//}
//
//// bitmap.width  位图宽度
//// bitmap.rows   位图行数（高度）
//// bitmap.pitch  位图一行占用的字节数
//
////MONO模式每1个像素仅用1bit保存，只有黑和白。
////1个byte可以保存8个像素，1个int可以保存8*4个像素。
//void ConvertMONOToRGBA(FT_Bitmap *source, GLubyte *rgba)
//{
//	GLubyte *s = source->buffer;
//	GLubyte *t = rgba;
//
//	for (GLuint y = source->rows; y > 0; y--)
//	{
//		GLubyte *ss = s;
//		GLubyte *tt = t;
//
//		for (GLuint x = source->width >> 3; x > 0; x--)
//		{
//			GLuint val = *ss;
//
//			for (GLuint i = 8; i > 0; i--)
//			{
//				tt[0] = tt[1] = tt[2] = tt[3] = (val & (1 << (i - 1))) ? 0xFF : 0x00;
//				tt += 4;
//			}
//
//			ss += 1;
//		}
//
//		GLuint rem = source->width & 7;
//
//		if (rem > 0)
//		{
//			GLuint val = *ss;
//
//			for (GLuint x = rem; x > 0; x--)
//			{
//				tt[0] = tt[1] = tt[2] = tt[3] = (val & 0x80) ? 0xFF : 0x00;
//				tt += 4;
//				val <<= 1;
//			}
//		}
//
//		s += source->pitch;
//		t += source->width * 4;    //pitch
//	}
//}
//
////GRAY模式1个像素用1个字节保存。
//void ConvertGRAYToRGBA(FT_Bitmap *source, GLubyte *rgba)
//{
//	for (GLuint y = 0; y < source->rows; y++)
//	{
//		for (GLuint x = 0; x < source->width; x++)
//		{
//			GLubyte *s = &source->buffer[(y * source->pitch) + x];
//			GLubyte *t = &rgba[((y * source->pitch) + x) * 4];
//
//			t[0] = t[1] = t[2] = 0xFF;
//			t[3] = *s;
//		}
//	}
//}
//
//bool CFontManager::CFont::loadChar(int code, glyphMetrics *metrics)
//{
//	FT_Error err;
//
//	FT_UInt glyph_index = FT_Get_Char_Index(m_face, (FT_ULong)code);
//
//	if (glyph_index > 0)
//	{
//		if ((err = FT_Load_Glyph(m_face, glyph_index, FT_LOAD_DEFAULT)) == FT_Err_Ok)
//		{
//			FT_GlyphSlot glyph = m_face->glyph;
//
//			FT_Render_Mode render_mode = m_antialias ? FT_RENDER_MODE_NORMAL : FT_RENDER_MODE_MONO;
//
//			if (m_antialias && m_bold)
//			{
//				if ((err = FT_Outline_EmboldenXY(&glyph->outline, 60, 60)) != FT_Err_Ok)
//				{
//					printf("FT_Outline_EmboldenXY() Error %d\n", err);
//				}
//			}
//
//			if ((err = FT_Render_Glyph(glyph, render_mode)) == FT_Err_Ok)
//			{
//				FT_Bitmap *bitmap = &glyph->bitmap;
//
//				switch (bitmap->pixel_mode)
//				{
//				case FT_PIXEL_MODE_MONO:
//				{
//										   if (!m_antialias && m_bold)
//										   {
//											   if ((err = FT_Bitmap_Embolden(m_library, bitmap, 60, 0)) != FT_Err_Ok)
//											   {
//												   printf("FT_Bitmap_Embolden() Error %d\n", err);
//											   }
//										   }
//										   ConvertMONOToRGBA(bitmap, m_rgba);
//										   break;
//				}
//				case FT_PIXEL_MODE_GRAY:
//				{
//										   ConvertGRAYToRGBA(bitmap, m_rgba);
//										   break;
//				}
//				default:
//				{
//						   memset(m_rgba, 0xFF, m_rgbaSize);
//						   break;
//				}
//				}
//
//				metrics->width = bitmap->width;
//				metrics->height = bitmap->rows;
//				metrics->horiBearingX = glyph->bitmap_left;
//				metrics->horiBearingY = glyph->bitmap_top;
//				metrics->horiAdvance = glyph->advance.x >> 6;
//
//				return true;
//			}
//			else
//			{
//				printf("FT_Render_Glyph() Error %d\n", err);
//			}
//		}
//		else
//		{
//			printf("FT_Load_Glyph() Error %d\n", err);
//		}
//	}
//
//	memset(metrics, 0, sizeof(glyphMetrics));
//
//	return false;
//}
//
////------------------------------------------------------------
//// CChar
////------------------------------------------------------------
//void CFontManager::CFont::CChar::setInfo(glyphMetrics *metrics)
//{
//	memcpy(&m_metrics, metrics, sizeof(glyphMetrics));
//}
//
//void CFontManager::CFont::CChar::getInfo(glyphMetrics *metrics, GLuint *texture, float coords[])
//{
//	memcpy(metrics, &m_metrics, sizeof(glyphMetrics));
//
//	*texture = m_texture;
//	memcpy(coords, m_coords, sizeof(float)* 4);
//}
//
////------------------------------------------------------------
//// CPage
////------------------------------------------------------------
//CFontManager::CFont::CPage::CPage()
//{
//	m_wide = m_tall = 256;
//	m_posx = m_posy = 0;
//
//	// In a line, for a max height character
//	m_maxCharTall = 0;
//
//	glGenTextures(1, &m_texture);    // Using your API here
//	glBindTexture(GL_TEXTURE_2D, m_texture);
//	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, m_wide, m_tall, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
//}
//
//CFontManager::CFont::CPage::~CPage()
//{
//	// free the texture
//}
//
//bool CFontManager::CFont::CPage::append(int wide, int tall, byte *rgba, float coords[])
//{
//	if (m_posy + tall > m_tall)
//	{
//		// not enough line space in this page
//		return false;
//	}
//
//	// If this line is full ...
//	if (m_posx + wide > m_wide)
//	{
//		int newLineY = m_posy + m_maxCharTall;
//
//		if (newLineY + tall > m_tall)
//		{
//			// No more space for new line in this page, should allocate a new one
//			return false;
//		}
//
//		// Begin in new line
//		m_posx = 0;
//		m_posy = newLineY;
//		// Reset
//		m_maxCharTall = 0;
//	}
//
//	glBindTexture(GL_TEXTURE_2D, m_texture);
//	glTexSubImage2D(GL_TEXTURE_2D, 0, m_posx, m_posy, wide, tall, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
//
//	coords[0] = m_posx / (float)m_wide;                // left
//	coords[1] = m_posy / (float)m_tall;                // top
//	coords[2] = (m_posx + wide) / (float)m_wide;    // right
//	coords[3] = (m_posy + tall) / (float)m_tall;    // bottom
//
//	m_posx += wide;
//
//	if (tall > m_maxCharTall)
//	{
//		m_maxCharTall = tall;
//	}
//
//	return true;
//}
//
//GLuint CFontManager::CFont::CPage::getTexture(void)
//{
//	return m_texture;
//}
//
////------------------------------------------------------------
//// CFontManager
////------------------------------------------------------------
//CFontManager::CFontManager()
//{
//	m_library = NULL;
//}
//
//CFontManager::~CFontManager()
//{
//	release();
//}
//
//bool CFontManager::initialize(void)
//{
//	FT_Error err;
//
//	if ((err = FT_Init_FreeType(&m_library)) != FT_Err_Ok)
//	{
//		printf("FT_Init_FreeType() Error %d\n", err);
//		return false;
//	}
//
//	return true;
//}
//
//void CFontManager::release(void)
//{
//	FT_Error err;
//
//	for (size_t i = 0; i < m_fonts.size(); i++)
//	{
//		delete m_fonts[i];
//		m_fonts[i] = NULL;
//	}
//
//	m_fonts.clear();
//
//	if ((err = FT_Done_FreeType(m_library)) != FT_Err_Ok)
//	{
//		printf("FT_Done_FreeType() Error %d\n");
//	}
//}
//
//int CFontManager::createFont(const char *filename, int face, int tall, bool bold, bool italic, bool antialias)
//{
//	CFont *font = new CFont();
//
//	if (font->create(m_library, filename, face, tall, bold, italic, antialias) != true)
//	{
//		delete font;
//		return 0;
//	}
//
//	m_fonts.push_back(font);
//
//	return m_fonts.size();
//}
//
//#define CONVERT_FONT_INDEX(x) (((x) < 1 || (x) > (int)m_fonts.size()) ? -1 : (x) - 1)
//
//bool CFontManager::getCharInfo(int font_index, int code, int *wide, int *tall, int *horiBearingX, int *horiBearingY, int *horiAdvance, GLuint *texture, float coords[])
//{
//	int i = CONVERT_FONT_INDEX(font_index);
//
//	if (i == -1)
//	{
//		return false;
//	}
//
//	CFont *font = m_fonts[i];
//
//	glyphMetrics metrics;
//
//	if (font->getCharInfo(code, &metrics, texture, coords) == false)
//	{
//		return false;
//	}
//
//	*wide = metrics.width;
//	*tall = metrics.height;
//	*horiBearingX = metrics.horiBearingX;
//	*horiBearingY = metrics.horiBearingY;
//	*horiAdvance = metrics.horiAdvance;
//
//	return true;
//}
//
//int CFontManager::getFontTall(int font_index)
//{
//	int i = CONVERT_FONT_INDEX(font_index);
//
//	if (i == -1)
//	{
//		return false;
//	}
//
//	CFont *font = m_fonts[i];
//
//	return font->getFontTall();
//}
//
//CFontManager g_FontManager;
//
//
//int char_font;
//
//#include "../../core/misc/SLFileUtils.h"
//#include "../../managers/SLShaderManager.h"
//#include "../../core/render/SLShader.h"
//SLShader* shader;
//
//void init(void)
//{
//	glClearColor(0.0, 0.0, 0.0, 0.0);
//
//	glEnable(GL_BLEND);
//	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
//
//	g_FontManager.initialize();
//	SLFileUtils* fmgr = SLFileUtils::getInstance();
//
//	char_font = g_FontManager.createFont(fmgr->getFullPatch(string("simkai.ttf")).c_str(), 0, 32, false, false, true);
//	if (char_font == 0)
//	{
//		printf("createFont failed\n");
//	}
//}
//
//wchar_t ciphertext[] =
//{
//	L"第一我做的是人气，不是他妈的信仰不是他妈的信任\n"
//	L"我想信任来着，一群狼心的人就知道玩游戏。我投入的你们给我一分钱回报了么。\n"
//	L"不懂少在那里嫌弃我，白花花的银子砸出来的东西免费给你们玩你们还这bb那bb\n"
//	L"不管有没有人骂我我只在乎有没有人看我 懂么？\n"
//	L"第二我你们尽管骂我\n"
//	L"第三我的事情是我的自由\n"
//	L"第四我一直很讨厌csol\n"
//	L"第五世界上最失败的一次行动就是创建百度贴吧\n"
//	L"第六 一群二逼骂个毛线管我屁事\n"
//	L"http://tieba.baidu.com/p/3144980358"
//};
//GLBatch _triangleBatch;
////#define DRAW_PAGE
//void draw_string(int x, int y, int font, wchar_t *content)
//{
//	//glMatrixMode(GL_MODELVIEW);
//	//glPushMatrix();
//	//glTranslatef(100,-100,0);
//	//if (shader == nullptr)return;
//	shader->use();
//	GLfloat model[16];
//	glGetFloatv(GL_MODELVIEW_MATRIX, model);//model
//	shader->setUniformMat44(string("mvMatrix"), (M3DMatrix44f*)model);
//
//	GLfloat proj[16];
//	glGetFloatv(GL_PROJECTION_MATRIX, proj);//projection
//	shader->setUniformMat44(string("pMatrix"), (M3DMatrix44f*)proj);
//
//	//glBegin(GL_QUADS);
//	//glColor4f(1.0, 1.0, 1.0, 1.0);
//	//glVertex3f(-50, -50, 0.0f);
//
//	//glColor4f(1.0, 1.0, 1.0, 1.0);
//	//glVertex3f(50, -50, 0.0f);
//
//	//glColor4f(1.0, 1.0, 1.0, 1.0);
//	//glVertex3f(50, 50, 0.0f);
//
//	//glColor4f(1.0, 1.0, 1.0, 1.0);
//	//glVertex3f(-50, 50, 0.0f);
//
//	//glEnd();
//
//	//if (true)return;
//
//	if (!font)
//		return;
//
//	int tall = g_FontManager.getFontTall(font);
//
//	int dx = x;
//	int dy = y;
//
//	GLuint sglt = 0;
//
//	while (*content)
//	{
//		if (*content == L'\n')
//		{
//			content++;
//			dx = x;
//			dy += tall + 2;    //row spacing
//			continue;
//		}
//
//		int cw, ct, bx, by, av;
//		GLuint glt;
//		float crd[4];
//
//		if (!g_FontManager.getCharInfo(font, *content, &cw, &ct, &bx, &by, &av, &glt, crd))
//		{
//			content++;
//			continue;
//		}
//
//		//大多数情况下多个字符都在同一个纹理中，避免频繁绑定纹理，可以提高效率
//		if (glt != sglt)
//		{
//			glBindTexture(GL_TEXTURE_2D, glt);
//			GLint tmpId = glGetUniformLocation(shader->_id, "textureUnit0");
//			glUniform1i(tmpId, 0);
//			//shader->setUniformTex(string("textureUnit0"), 0, glt);
//			//sglt = glt;
//		}
//
//		int px = dx + bx;
//		int py = dy - by;
//
//		_triangleBatch.Reset();
//		_triangleBatch.Begin(GL_TRIANGLE_STRIP, 4, 1);
//
//		_triangleBatch.MultiTexCoord2f(0, crd[0], crd[1]);
//		_triangleBatch.Color4f(1, 0, 0, 1);
//		_triangleBatch.Vertex3f(px, py, 0);
//
//		_triangleBatch.MultiTexCoord2f(0, crd[2], crd[1]);
//		_triangleBatch.Color4f(1, 0, 0, 1);
//		_triangleBatch.Vertex3f(px + cw, py, 0);
//
//		_triangleBatch.MultiTexCoord2f(0, crd[0], crd[3]);
//		_triangleBatch.Color4f(1, 0, 0, 1);
//		_triangleBatch.Vertex3f(px, py + ct, 0);
//
//		_triangleBatch.MultiTexCoord2f(0, crd[2], crd[3]);
//		_triangleBatch.Color4f(1, 0, 0, 1);
//		_triangleBatch.Vertex3f(px + cw, py + ct, 0);
//
//		_triangleBatch.End();
//		_triangleBatch.Draw();
//
//		/*glBegin(GL_QUADS);
//
//		glVertex3f(px, py, 0.0f);
//		glTexCoord2f(crd[0], crd[1]);
//		glColor3f(1, 1, 1);
//
//
//		glVertex3f(px + cw, py, 0.0f);
//		glTexCoord2f(crd[2], crd[1]);
//		glColor3f(1, 1, 1);
//
//		glVertex3f(px + cw, py + ct, 0.0f);
//		glTexCoord2f(crd[2], crd[3]);
//		glColor3f(1, 1, 1);
//
//		glVertex3f(px, py + ct, 0.0f);
//		glTexCoord2f(crd[0], crd[3]);
//		glColor3f(1, 1, 1);
//
//		glEnd();*/
//
//		dx += av;
//
//		content++;
//	}
//
//	//glPopMatrix();
//}
//
//void draw_page_texture(int x, int y, GLuint glt)
//{
//	if (!glt)
//	{
//		glDisable(GL_TEXTURE_2D);
//		glColor4f(0.2, 0.2, 0.2, 1.0);
//	}
//	else
//	{
//		glEnable(GL_TEXTURE_2D);
//		glBindTexture(GL_TEXTURE_2D, glt);
//		glColor4f(1.0, 1.0, 1.0, 1.0);
//	}
//
//	int w = 256;
//	int t = 256;
//
//	glBegin(GL_QUADS);
//	//glColor4f(1.0, 0.0, 0.0, 1.0);
//	glTexCoord2f(0.0, 0.0);
//	glVertex3f(x, y, 0.0f);
//
//	//glColor4f(0.0, 1.0, 0.0, 1.0);
//	glTexCoord2f(1.0, 0.0);
//	glVertex3f(x + w, y, 0.0f);
//
//	//glColor4f(0.0, 0.0, 1.0, 1.0);
//	glTexCoord2f(1.0, 1.0);
//	glVertex3f(x + w, y + t, 0.0f);
//
//	//glColor4f(1.0, 1.0, 1.0, 1.0);
//	glTexCoord2f(0.0, 1.0);
//	glVertex3f(x, y + t, 0.0f);
//	glEnd();
//}
//
//void display(void)
//{
//	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
//
//	glEnable(GL_TEXTURE_2D);
//
//	draw_string(0, 0, char_font, ciphertext);
//
//	//draw_page_texture(10, 350, 0);    //background
//	//draw_page_texture(10, 350, 1);    //page1 texture
//
//	//draw_page_texture(276, 350, 0);    //background
//	//draw_page_texture(276, 350, 2);    //page2 texture
//
//	glutSwapBuffers();
//	glutPostRedisplay();
//}
//
//void reshape(int width, int height)
//{
//	glViewport(0, 0, width, height);
//	glMatrixMode(GL_PROJECTION);
//	glLoadIdentity();
//	gluOrtho2D(0, width, height, 0);
//	glMatrixMode(GL_MODELVIEW);
//}
//
//void keyboard(unsigned char key, int x, int y)
//{
//}
//
//void testmain(int argc, char **argv)
//{
//	glutInitWindowPosition(200, 200);
//	glutInitWindowSize(1200, 680);
//	glutInit(&argc, argv);
//	glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH | GLUT_STENCIL);
//	glutCreateWindow("FreeType OpenGL");
//	init();
//
//	GLenum err = glewInit();
//	if (GLEW_OK != err) {
//		fprintf(stderr, "GLEW Error: %s\n", glewGetErrorString(err));
//		return;
//	}
//
//	SLShaderManager* smgr = SLShaderManager::getInstance();
//	shader = smgr->addShader(string("fontShader"));
//	glutDisplayFunc(display);
//	glutReshapeFunc(reshape);
//	glutKeyboardFunc(keyboard);
//	glutMainLoop();
//
//}
//
//#endif