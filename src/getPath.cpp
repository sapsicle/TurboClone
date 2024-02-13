#include "getPath.hpp"

#include <filesystem>

using namespace std;
namespace fs = std::filesystem;

string getPath()
{
    // if not specified, call with default directory
    return getPath("archive");
}

string getPath(fs::path directory)
{
    
    return "";
}
