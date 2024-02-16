#include "../headers/getPath.hpp"

#include <filesystem>
#include <iostream>
#include <unistd.h>

using namespace std;
namespace fs = std::filesystem;

string getPath()
{
    // if not specified, call with default directory
    cout << "No path specified, defaulting to ~/Documents/archive/" << endl;
    string user = getlogin();
    fs::path defaultDir = fs::path("/home") / user / "Documents/archive/";
    cout << defaultDir << endl;

    string homeDir = getenv("HOME");
    cout << homeDir << endl;
    // if ()
    // return getPath();
    return "exit";
}

string getPath(fs::path directory)
{
    
    return "";
}
