#ifndef __PHYSICSWORLD__
#define __PHYSICSWORLD__

#include "PointObject.h"
#include "ObjectSystem.h"

class PhysicsWorld
{
public:
  void print();
  void step();
  PhysicsWorld();
  
private:
  PointObject objects[2];
  ObjectSystem obSys;
};

#endif //__PHYSICSWORLD__
