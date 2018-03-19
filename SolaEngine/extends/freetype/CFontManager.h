#ifndef __CFontManager_H__
#define __CFontManager_H__

// OpenGL library
#include <gl/glut.h>

// Std misc
#include <map>
#include <vector>

// FreeType library
#include <ft2build.h>
#include FT_FREETYPE_H
#include FT_BITMAP_H
#include FT_OUTLINE_H


#ifdef CreateFont
#undef CreateFont
#endif

typedef unsigned char byte;

class CFontManager
{
public:
	CFontManager();
	~CFontManager();

	bool initialize(void);
	void release(void);
	int createFont(const char *filename, int face, int tall, bool bold, bool italic, bool antialias);
	bool getCharInfo(int font_index, int code, int *wide, int *tall, int *horiBearingX, int *horiBearingY, int *horiAdvance, GLuint *texture, float coords[]);
	int getFontTall(int font_index);

private:
	struct glyphMetrics
	{
		int    width;
		int    height;
		int    horiBearingX;
		int    horiBearingY;
		int    horiAdvance;
		//int    vertBearingX;
		//int    vertBearingY;
		//int    vertAdvance;
	};

	class CFont
	{
	public:
		CFont();
		~CFont();

		bool create(FT_Library library, const char *filename, FT_Long face_index, int tall, bool bold, bool italic, bool antialias);
		void release(void);
		bool getCharInfo(int code, glyphMetrics *metrics, GLuint *texture, float coords[]);
		int getFontTall(void);

	private:
		bool loadChar(int code, glyphMetrics *metrics);

		class CChar
		{
		public:
			void setInfo(glyphMetrics *metrics);
			void getInfo(glyphMetrics *metrics, GLuint *texture, float coords[]);

		public:
			int                m_code;
			GLuint            m_texture;
			float            m_coords[4];    // left top right bottom

		private:
			glyphMetrics    m_metrics;
		};

		class CPage
		{
		public:
			CPage();
			~CPage();

			bool append(int wide, int tall, byte *rgba, float coords[]);
			GLuint getTexture(void);

		private:
			GLuint    m_texture;
			int        m_wide;
			int        m_tall;
			int        m_posx;
			int        m_posy;
			int        m_maxCharTall;
		};

		typedef std::map<int, CChar *> TCharMap;

		FT_Library                m_library;
		FT_Face                    m_face;
		bool                    m_antialias;
		bool                    m_bold;
		int                        m_tall;
		int                        m_rgbaSize;
		GLubyte                    *m_rgba;
		TCharMap                m_chars;
		std::vector<CPage *>    m_pages;
	};

	FT_Library                m_library;
	std::vector<CFont *>    m_fonts;
};

#endif