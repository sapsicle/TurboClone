#pragma once

#include <filesystem>

#include <string>

using namespace std;
namespace fs = std::filesystem;

fs::path getPath();
fs::path getPath(string directory);