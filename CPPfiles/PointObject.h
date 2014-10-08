#ifndef __POINTOBJECT__
#define __POINTOBJECT__

#include "PointObject.h"

class PointObject
{
public:
  //Important
  void step(double* deltaV);
  double* getLatestDeltaV();
//  PointObject();

  //Utility Functions
  void print();
  void setPosition(double x, double y, double z);
  void setVelocity(double x, double y, double z);
  void setMass(double passMass);
  double getMass();
  double* getPosition();
  double latestDeltaV[3];

protected:
  double position[3];
  double velocity[3];
  double mass;
};

#endif //__POINTOBJECT__
