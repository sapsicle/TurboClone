#pragma once

#include "../headers/getPath.hpp"

#include <filesystem>
#include <iostream>
#include <unistd.h>

using namespace std;
namespace fs = std::filesystem;

fs::path getPath()
{
    // if not specified, call with default directory
    cout << "No path specified, defaulting to ~/Documents/archive/" << endl;
    string user = getlogin();
    string homeDir = getenv("HOME");
    fs::path defaultDir = fs::path(homeDir) / "Documents/archive/";
    cout << homeDir << endl;
    cout << defaultDir << endl;

    // return getPath();
    return "exit";
}

fs::path getPath(string directory)
{
    return fs::path(directory);
}