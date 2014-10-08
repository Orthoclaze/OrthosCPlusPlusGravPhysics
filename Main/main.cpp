//in main.cpp
#include "PhysicsWorld.h"  // defines MyClass
//#include "../jsoncpp/include/json/json.h"

int main()
{
  PhysicsWorld a; // no longer produces an error, because MyClass is defined
  for(int i=0; i<30;i++) {  
	a.print();
  	a.step();
  }
  return 0;
}
