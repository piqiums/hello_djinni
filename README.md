# hello_djinni_lib
Making a lib (.aar) with Djinni. Djinni will generate source code for interface in C++, Java, Objective-C. We will add the implementation in C++, then the implementation could be shared on both Android and iOS platform.

Folder
======
android_project/HelloWorld  --  the Android library project, nearly empty, only used to generate the .aar file.  
deps               -- libs.   
generated-src	     -- generated source code. including cpp, java, jni, objc.  
src/cpp	           -- put your implementation code here.  
helloworld.djinni	 -- the Djinni file describing the interface. Source code are generated base on it.  
run_djinni.bat     -- the script to generate source code on Windows platform.  
run_djinni.sh      -- the script to generate source code on U**x/Linux platform.  
