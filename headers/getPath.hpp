#ifndef PATH
#define PATH

#include <filesystem>

#include <string>

using namespace std;
namespace fs = std::filesystem;

string getPath();

string getPath(fs::path directory);

#endif