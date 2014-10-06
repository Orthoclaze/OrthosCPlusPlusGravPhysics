#ifndef __POINTOBJECT__
#define __POINTOBJECT__

#include "PointObject.h"

// in SecondClass.h
/*
typedef struct {
	double* objects;
	int exception;
} System;
*/

class PointObject
{
public:
  void print();
  void step(double* deltaV);
  void setPosition(double x, double y, double z);
  void setVelocity(double x, double y, double z);
  void setMass(double passMass);
  double getMass();
  double* getPosition();
  double* getLatestDeltaV();
  //void setObSys(ObjectSystem* obSys);
  //void passObjects(double* array, int indexException);
  //Pointer exposed here to pass information to object
  double latestDeltaV[3];
protected:
  double position[3];
  double velocity[3];
  double mass;
  //ObjectSystem* obSys;
  //System system;
};

#endif //__POINTOBJECT__
