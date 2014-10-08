#ifndef __PHYSICSWORLD__
#define __PHYSICSWORLD__

#include "PointObject.h"
#include "ObjectSystem.h"

class PhysicsWorld
{
public:
  void print(); // Current System information
  void step(); // Increment system by one time unit
  PhysicsWorld();
  
private:
  PointObject objects[NUMBEROFOBJECTS];
  ObjectSystem obSys;
};

#endif //__PHYSICSWORLD__
