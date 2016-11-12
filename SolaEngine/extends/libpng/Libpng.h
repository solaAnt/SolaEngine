#include <GLTools.h>
#include "png.h"

GLuint CreateTextureFromPng(const char* filename,int &w,int &h)
{
	unsigned char header[8];     //8
	int k;   //用于循环
	//GLuint textureID; //贴图名字
	int width, height; //记录图片到宽和高
	png_byte color_type; //图片到类型（可能会用在是否是开启来通道）
	png_byte bit_depth; //字节深度

	png_structp png_ptr; //图片
	png_infop info_ptr; //图片的信息
	int number_of_passes; //隔行扫描
	png_bytep * row_pointers;//图片的数据内容
	int row, col, pos;  //用于改变png像素排列的问题。
	GLubyte *rgba;

	FILE *fp = fopen(filename, "rb");//以只读形式打开文件名为file_name的文件
	if (!fp)//做出相应可能的错误处理
	{
		fclose(fp);//关闭打开的文件！给出默认贴图
		return 0;//此处应该调用一个生成默认贴图返回ID的函数
	}
	//读取文件头判断是否所png图片.不是则做出相应处理
	fread(header, 1, 8, fp);
	if (png_sig_cmp(header, 0, 8))
	{
		fclose(fp);
		return 0; //每个错误处理都是一样的！这样报错之后锁定就要花点小时间来！
	}

	//根据libpng的libpng-manual.txt的说明使用文档 接下来必须初始化png_structp 和 png_infop
	png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL); //后三个是绑定错误以及警告的函数这里设置为空
	if (!png_ptr)//做出相应到初始化失败的处理
	{
		fclose(fp);
		return 0;
	}
	//根据初始化的png_ptr初始化png_infop
	info_ptr = png_create_info_struct(png_ptr);

	if (!info_ptr)
	{
		//初始化失败以后销毁png_structp
		png_destroy_read_struct(&png_ptr, (png_infopp)NULL, (png_infopp)NULL);
		fclose(fp);
		return 0;
	}


	//老老实实按照libpng给到的说明稳定步骤来  错误处理！
	if (setjmp(png_jmpbuf(png_ptr)))

	{
		//释放占用的内存！然后关闭文件返回一个贴图ID此处应该调用一个生成默认贴图返回ID的函数

		png_destroy_read_struct(&png_ptr, (png_infopp)NULL, (png_infopp)NULL);

		fclose(fp);

		return 0;

	}
	//你需要确保是通过2进制打开的文件。通过i/o定制函数png_init_io
	png_init_io(png_ptr, fp);
	//似乎是说要告诉libpng文件从第几个开始missing
	png_set_sig_bytes(png_ptr, 8);
	//如果你只想简单的操作你现在可以实际读取图片信息了！
	png_read_info(png_ptr, info_ptr);
	//获得图片到信息 width height 颜色类型  字节深度
	width = png_get_image_width(png_ptr, info_ptr);
	height = png_get_image_height(png_ptr, info_ptr);
	w = width; h = height;
	color_type = png_get_color_type(png_ptr, info_ptr);
	//如果图片带有alpha通道就需要
	// if (color_type == PNG_COLOR_TYPE_RGB_ALPHA)

	// png_set_swap_alpha(png_ptr);
	bit_depth = png_get_bit_depth(png_ptr, info_ptr);
	//隔行扫描图片  这个必须要调用才能进行
	number_of_passes = png_set_interlace_handling(png_ptr);
	//将读取到的信息更新到info_ptr
	png_read_update_info(png_ptr, info_ptr);

	//读文件
	if (setjmp(png_jmpbuf(png_ptr))){
		fclose(fp);
		return 0;
	}
	rgba = (GLubyte*)malloc(width * height * 4);
	//使用动态数组  设置长度
	row_pointers = (png_bytep*)malloc(sizeof(png_bytep)* height);

	for (k = 0; k < height; k++)
		row_pointers[k] = NULL;

	//通过扫描流里面的每一行将得到的数据赋值给动态数组       
	for (k = 0; k<height; k++)
		//row_pointers[k] = (png_byte*) malloc(png_get_rowbytes(png_ptr,info_ptr));
		row_pointers[k] = (png_bytep)png_malloc(png_ptr, png_get_rowbytes(png_ptr,
		info_ptr));
	//由于png他的像素是由 左-右-从顶到底 而贴图需要的像素都是从左-右-底到顶的所以在这里需要把像素内容进行一个从新排列
	//读图片
	png_read_image(png_ptr, row_pointers);

	pos = (width * height * 4) - (4 * width);
	for (row = 0; row < height; row++)
	{
		for (col = 0; col < (4 * width); col += 4)
		{
			rgba[pos++] = row_pointers[row][col];        // red
			rgba[pos++] = row_pointers[row][col + 1];    // green
			rgba[pos++] = row_pointers[row][col + 2];    // blue
			rgba[pos++] = row_pointers[row][col + 3];    // alpha
		}
		pos = (pos - (width * 4) * 2);
	}


	////开启纹理贴图特效
	//glEnable(GL_TEXTURE_2D);

	////创建纹理 
	//glGenTextures(1, &textureID);
	////绑定纹理
	//glBindTexture(GL_TEXTURE_2D, textureID); //将纹理绑定到名字

	//设置贴图和纹理的混合效果这里是默认只用纹理
	glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_DECAL);
	//设置纹理所用到图片数据
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);

	//glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);

	free(row_pointers);
	fclose(fp);
	return 0;
}