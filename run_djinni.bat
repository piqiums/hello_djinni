::@echo off
SETLOCAL

set PROJECT_DIR=%~dp0

:: Djinni IDL file location
set djinni_file=helloworld.djinni

:: C++ namespace for generated srcs
set namespace=helloworld

:: Objective-C class name prefix for generated src
set objc_prefix=HW

:: Java package name for generated src
set java_package=com.mycompany.helloworld

:: get java directory from package name
set java_dir=com\mycompany\helloworld

set MAINCLASS=djinni.Main

:: Script

:: get base directory
set base_dir=%~dp0

:: output directories for generated src
set cpp_out=%base_dir%\generated-src\cpp
set objc_out=%base_dir%\generated-src\objc
set jni_out=%base_dir%\generated-src\jni
set java_out=%base_dir%\generated-src\java\%java_dir%

:: clean generated src dirs
if exist %cpp_out% del \%cpp_out%
if exist %jni_out% del \%jni_out%
if exist %objc_out% del \%objc_out%
if exist %java_out% del \%java_out% 

:: execute the djinni command
java %JOPTS% -cp ".\bin\scala-2.11\classes;.\bin\org.scala-lang\scala-library\jars\scala-library-2.11.0.jar;.\bin\org.scala-lang.modules\scala-parser-combinators_2.11\bundles\scala-parser-combinators_2.11-1.0.1.jar;.\bin\org.yaml\snakeyaml\bundles\snakeyaml-1.15.jar;.\bin\com.github.scopt\scopt_2.11\jars\scopt_2.11-3.2.0.jar" "%MAINCLASS%" --java-out %java_out% --java-package %java_package% --ident-java-field mFooBar --cpp-out %cpp_out% --cpp-namespace %namespace% --jni-out %jni_out% --ident-jni-class NativeFooBar --ident-jni-file NativeFooBar --objc-out %objc_out% --objc-type-prefix %objc_prefix% --objcpp-out %objc_out% --idl %djinni_file%
   
ENDLOCAL

