#ifndef KEYAUTH_HPP
#define KEYAUTH_HPP
#include <string>

class KeyAuthApp {
public:
    void init();
    void login(std::string key);
};
#endif
