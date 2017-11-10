#pragma once
 
#include "hello_world.hpp"
 
namespace helloworld {
    
    class HelloWorldImpl : public helloworld::HelloWorld {
    protected:
        std::string msg;
	
    public:
        // Constructor
        HelloWorldImpl();
        
        // Our method that returns a string
        std::string get_msg();
        void set_msg(const std::string & msg);
        
    };
    
}