#include "MyClass.h"
#include <iostream>

namespace MyNamespace {
    MyClass::MyClass() : ptr(new int(42)) {}

    MyClass::~MyClass() {
        delete ptr;
    }

    int* MyClass::getPointer() {
        return ptr;
    }

    void MyClass::addToVector(int value) {
        vec.push_back(value);
    }

    const std::vector<int>& MyClass::getVector() const {
        return vec;
    }
 
}
