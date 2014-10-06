#ifndef __OBJECTSYSTEM__
#define __OBJECTSYSTEM__

#include "PointObject.h"

class ObjectSystem {
public:
	void step();
	void getDeltaV(double* deltaV, int asker);
	void setMembers(PointObject* objects, int passSize);
protected:
	PointObject* objects;
	int size;
	void getDeltaVperObject(double* deltaV, PointObject* asker, PointObject* target);
	void getDisplacement(double* dx, double* a, double* b);
};

#endif //__OBJECTSYSTEM__
