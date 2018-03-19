#include "CFontManager.h"
//------------------------------------------------------------
// CFont
//------------------------------------------------------------
CFontManager::CFont::CFont()
{
	m_face = NULL;
	m_rgba = NULL;
	m_antialias = false;
	m_bold = false;
	m_tall = 0;
}

CFontManager::CFont::~CFont()
{
	release();
}

bool CFontManager::CFont::create(FT_Library library, const char *filename, FT_Long face_index, int tall, bool bold, bool italic, bool antialias)
{
	FT_Error err;

	if (tall > 256)
	{
		// Bigger than a page size
		return false;
	}

	if ((err = FT_New_Face(library, filename, face_index, &m_face)) != FT_Err_Ok)
	{
		printf("FT_New_Face() Error %d\n", err);
		return false;
	}

	if ((err = FT_Set_Pixel_Sizes(m_face, 0, tall)) != FT_Err_Ok)
	{
		printf("FT_Set_Pixel_Sizes() Error %d\n", err);
		return false;
	}

	m_rgbaSize = (tall * 2) * tall * 4;

	m_rgba = new GLubyte[m_rgbaSize];

	if (m_rgba == NULL)
	{
		return false;
	}

	m_library = library;
	m_antialias = antialias;
	m_bold = bold;
	m_tall = tall;

	if (italic)
	{
		FT_Matrix m;
		m.xx = 0x10000L;
		m.xy = 0.5f * 0x10000L;
		m.yx = 0;
		m.yy = 0x10000L;
		FT_Set_Transform(m_face, &m, NULL);
	}

	return true;
}

void CFontManager::CFont::release(void)
{
	FT_Error err;

	if (m_face)
	{
		if ((err = FT_Done_Face(m_face)) != FT_Err_Ok)
		{
			printf("FT_Done_Face() Error %d\n", err);
		}
		m_face = NULL;
	}

	if (m_rgba)
	{
		delete[] m_rgba;
		m_rgba = NULL;
	}

	for (TCharMap::iterator it = m_chars.begin(); it != m_chars.end(); it++)
	{
		delete it->second;
		it->second = NULL;
	}

	m_chars.clear();

	for (size_t i = 0; i < m_pages.size(); i++)
	{
		delete m_pages[i];
		m_pages[i] = NULL;
	}

	m_pages.clear();
}

bool CFontManager::CFont::getCharInfo(int code, glyphMetrics *metrics, GLuint *texture, float coords[])
{
	// fast find it
	TCharMap::iterator it = m_chars.find(code);

	if (it != m_chars.end())
	{
		it->second->getInfo(metrics, texture, coords);
		return true;
	}

	glyphMetrics gm;

	if (loadChar(code, &gm) == false)
	{
		return false;
	}

	CChar *ch = new CChar();

	ch->m_code = code;
	ch->setInfo(&gm);

	for (size_t i = 0; i < m_pages.size(); i++)
	{
		CPage *page = m_pages[i];

		if (page->append(gm.width, gm.height, m_rgba, ch->m_coords))
		{
			ch->m_texture = page->getTexture();
			ch->getInfo(metrics, texture, coords);
			m_chars.insert(TCharMap::value_type(code, ch));
			return true;
		}
	}

	CPage *page = new CPage();

	if (page->append(gm.width, gm.height, m_rgba, ch->m_coords))
	{
		ch->m_texture = page->getTexture();
		ch->getInfo(metrics, texture, coords);
		m_chars.insert(TCharMap::value_type(code, ch));
		m_pages.push_back(page);
		return true;
	}

	delete ch;
	delete page;

	return false;
}

int CFontManager::CFont::getFontTall(void)
{
	return m_tall;
}

// bitmap.width  位图宽度
// bitmap.rows   位图行数（高度）
// bitmap.pitch  位图一行占用的字节数

//MONO模式每1个像素仅用1bit保存，只有黑和白。
//1个byte可以保存8个像素，1个int可以保存8*4个像素。
void ConvertMONOToRGBA(FT_Bitmap *source, GLubyte *rgba)
{
	GLubyte *s = source->buffer;
	GLubyte *t = rgba;

	for (GLuint y = source->rows; y > 0; y--)
	{
		GLubyte *ss = s;
		GLubyte *tt = t;

		for (GLuint x = source->width >> 3; x > 0; x--)
		{
			GLuint val = *ss;

			for (GLuint i = 8; i > 0; i--)
			{
				tt[0] = tt[1] = tt[2] = tt[3] = (val & (1 << (i - 1))) ? 0xFF : 0x00;
				tt += 4;
			}

			ss += 1;
		}

		GLuint rem = source->width & 7;

		if (rem > 0)
		{
			GLuint val = *ss;

			for (GLuint x = rem; x > 0; x--)
			{
				tt[0] = tt[1] = tt[2] = tt[3] = (val & 0x80) ? 0xFF : 0x00;
				tt += 4;
				val <<= 1;
			}
		}

		s += source->pitch;
		t += source->width * 4;    //pitch
	}
}

//GRAY模式1个像素用1个字节保存。
void ConvertGRAYToRGBA(FT_Bitmap *source, GLubyte *rgba)
{
	for (GLuint y = 0; y < source->rows; y++)
	{
		for (GLuint x = 0; x < source->width; x++)
		{
			GLubyte *s = &source->buffer[(y * source->pitch) + x];
			GLubyte *t = &rgba[((y * source->pitch) + x) * 4];

			t[0] = t[1] = t[2] = 0xFF;
			t[3] = *s;
		}
	}
}

bool CFontManager::CFont::loadChar(int code, glyphMetrics *metrics)
{
	FT_Error err;

	FT_UInt glyph_index = FT_Get_Char_Index(m_face, (FT_ULong)code);

	if (glyph_index > 0)
	{
		if ((err = FT_Load_Glyph(m_face, glyph_index, FT_LOAD_DEFAULT)) == FT_Err_Ok)
		{
			FT_GlyphSlot glyph = m_face->glyph;

			FT_Render_Mode render_mode = m_antialias ? FT_RENDER_MODE_NORMAL : FT_RENDER_MODE_MONO;

			if (m_antialias && m_bold)
			{
				if ((err = FT_Outline_EmboldenXY(&glyph->outline, 60, 60)) != FT_Err_Ok)
				{
					printf("FT_Outline_EmboldenXY() Error %d\n", err);
				}
			}

			if ((err = FT_Render_Glyph(glyph, render_mode)) == FT_Err_Ok)
			{
				FT_Bitmap *bitmap = &glyph->bitmap;

				switch (bitmap->pixel_mode)
				{
				case FT_PIXEL_MODE_MONO:
				{
										   if (!m_antialias && m_bold)
										   {
											   if ((err = FT_Bitmap_Embolden(m_library, bitmap, 60, 0)) != FT_Err_Ok)
											   {
												   printf("FT_Bitmap_Embolden() Error %d\n", err);
											   }
										   }
										   ConvertMONOToRGBA(bitmap, m_rgba);
										   break;
				}
				case FT_PIXEL_MODE_GRAY:
				{
										   ConvertGRAYToRGBA(bitmap, m_rgba);
										   break;
				}
				default:
				{
						   memset(m_rgba, 0xFF, m_rgbaSize);
						   break;
				}
				}

				metrics->width = bitmap->width;
				metrics->height = bitmap->rows;
				metrics->horiBearingX = glyph->bitmap_left;
				metrics->horiBearingY = glyph->bitmap_top;
				metrics->horiAdvance = glyph->advance.x >> 6;

				return true;
			}
			else
			{
				printf("FT_Render_Glyph() Error %d\n", err);
			}
		}
		else
		{
			printf("FT_Load_Glyph() Error %d\n", err);
		}
	}

	memset(metrics, 0, sizeof(glyphMetrics));

	return false;
}

//------------------------------------------------------------
// CChar
//------------------------------------------------------------
void CFontManager::CFont::CChar::setInfo(glyphMetrics *metrics)
{
	memcpy(&m_metrics, metrics, sizeof(glyphMetrics));
}

void CFontManager::CFont::CChar::getInfo(glyphMetrics *metrics, GLuint *texture, float coords[])
{
	memcpy(metrics, &m_metrics, sizeof(glyphMetrics));

	*texture = m_texture;
	memcpy(coords, m_coords, sizeof(float)* 4);
}

//------------------------------------------------------------
// CPage
//------------------------------------------------------------
CFontManager::CFont::CPage::CPage()
{
	m_wide = m_tall = 256;
	m_posx = m_posy = 0;

	// In a line, for a max height character
	m_maxCharTall = 0;

	glGenTextures(1, &m_texture);    // Using your API here
	glBindTexture(GL_TEXTURE_2D, m_texture);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, m_wide, m_tall, 0, GL_RGBA, GL_UNSIGNED_BYTE, NULL);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
}

CFontManager::CFont::CPage::~CPage()
{
	// free the texture
}

bool CFontManager::CFont::CPage::append(int wide, int tall, byte *rgba, float coords[])
{
	if (m_posy + tall > m_tall)
	{
		// not enough line space in this page
		return false;
	}

	// If this line is full ...
	if (m_posx + wide > m_wide)
	{
		int newLineY = m_posy + m_maxCharTall;

		if (newLineY + tall > m_tall)
		{
			// No more space for new line in this page, should allocate a new one
			return false;
		}

		// Begin in new line
		m_posx = 0;
		m_posy = newLineY;
		// Reset
		m_maxCharTall = 0;
	}

	glBindTexture(GL_TEXTURE_2D, m_texture);
	glTexSubImage2D(GL_TEXTURE_2D, 0, m_posx, m_posy, wide, tall, GL_RGBA, GL_UNSIGNED_BYTE, rgba);

	coords[0] = m_posx / (float)m_wide;                // left
	coords[1] = m_posy / (float)m_tall;                // top
	coords[2] = (m_posx + wide) / (float)m_wide;    // right
	coords[3] = (m_posy + tall) / (float)m_tall;    // bottom

	m_posx += wide;

	if (tall > m_maxCharTall)
	{
		m_maxCharTall = tall;
	}

	return true;
}

GLuint CFontManager::CFont::CPage::getTexture(void)
{
	return m_texture;
}

//------------------------------------------------------------
// CFontManager
//------------------------------------------------------------
CFontManager::CFontManager()
{
	m_library = NULL;
}

CFontManager::~CFontManager()
{
	release();
}

bool CFontManager::initialize(void)
{
	FT_Error err;

	if ((err = FT_Init_FreeType(&m_library)) != FT_Err_Ok)
	{
		printf("FT_Init_FreeType() Error %d\n", err);
		return false;
	}

	return true;
}

void CFontManager::release(void)
{
	FT_Error err;

	for (size_t i = 0; i < m_fonts.size(); i++)
	{
		delete m_fonts[i];
		m_fonts[i] = NULL;
	}

	m_fonts.clear();

	if ((err = FT_Done_FreeType(m_library)) != FT_Err_Ok)
	{
		printf("FT_Done_FreeType() Error %d\n");
	}
}

int CFontManager::createFont(const char *filename, int face, int tall, bool bold, bool italic, bool antialias)
{
	CFont *font = new CFont();

	if (font->create(m_library, filename, face, tall, bold, italic, antialias) != true)
	{
		delete font;
		return 0;
	}

	m_fonts.push_back(font);

	return m_fonts.size();
}

#define CONVERT_FONT_INDEX(x) (((x) < 1 || (x) > (int)m_fonts.size()) ? -1 : (x) - 1)

bool CFontManager::getCharInfo(int font_index, int code, int *wide, int *tall, int *horiBearingX, int *horiBearingY, int *horiAdvance, GLuint *texture, float coords[])
{
	int i = CONVERT_FONT_INDEX(font_index);

	if (i == -1)
	{
		return false;
	}

	CFont *font = m_fonts[i];

	glyphMetrics metrics;

	if (font->getCharInfo(code, &metrics, texture, coords) == false)
	{
		return false;
	}

	*wide = metrics.width;
	*tall = metrics.height;
	*horiBearingX = metrics.horiBearingX;
	*horiBearingY = metrics.horiBearingY;
	*horiAdvance = metrics.horiAdvance;

	return true;
}

int CFontManager::getFontTall(int font_index)
{
	int i = CONVERT_FONT_INDEX(font_index);

	if (i == -1)
	{
		return false;
	}

	CFont *font = m_fonts[i];

	return font->getFontTall();
}
