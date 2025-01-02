%module SwigInterface
%{
#include "MyClass.h"
%}

// Import standard vector support
%include <std_vector.i>
namespace std {
    %template(IntVector) vector<int>;
}

// Define the MyClass module
namespace MyNamespace {
    %include "MyClass.h"
}

// Handle function pointer (callback)
%include <functional>
%{
#include <functional>
%}
