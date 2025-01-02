using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
//using CPPLibrary;

class Program
{
    static void Main()
    {
        MyClass myClass = new MyClass();

        // Access the pointer using SWIGTYPE_p_int
        SWIGTYPE_p_int intPointer = myClass.getPointer();

        // Convert SWIGTYPE_p_int to IntPtr
        //IntPtr pointer = MyClass.castToIntPtr(intPointer);
        IntPtr ptr= (nint)SWIGTYPE_p_int.getCPtr(intPointer);
        // Read the value pointed by the pointer
        //int value = System.Runtime.InteropServices.Marshal.ReadInt32(pointer);
        //SWIGTYPE_p_int value = myClass.getPointer();
        int valueRead = Marshal.ReadInt32(ptr);

        Console.WriteLine("Pointer value: " + valueRead);

    
        myClass.addToVector(10);
        myClass.addToVector(40);
        IntVector v = myClass.getVector();
       
        for (int i = 0; i < v.Count(); i++)
        {
            Console.WriteLine("Vector element: " + v.ElementAt(i));
        }
    }
}
