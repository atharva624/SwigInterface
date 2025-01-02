#pragma once
#include <vector>
#include <string>
#include <functional>

namespace MyNamespace {
    class MyClass {
    public:
        MyClass();
        ~MyClass();


        // Returns a pointer to the int value
        int* getPointer();

        // Modifies the vector
        void addToVector(int value);

        // Returns the vector by reference
        const std::vector<int>& getVector() const;

      


    private:
        int* ptr;                  // A pointer to an int
        std::vector<int> vec;


    };
}
