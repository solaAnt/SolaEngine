#pragma once

#include <array>
#include <vector>
#include "CCData.h"

namespace cocos2d
{
	std::array<std::string, 2> splitext(const std::string &file_path);

	void DecryptImage(const std::string &filename, Data &data);
}