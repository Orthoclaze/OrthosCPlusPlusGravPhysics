#include "ObjectSystem.h"

#include <stdio.h>
#include <iostream>

using namespace std;

void ObjectSystem::step() {
	double passDeltaV[3];
        for (int i=0; i<ObjectSystem::size; i++) {
		ObjectSystem::getDeltaV(passDeltaV, i);    // Grav contributed velocity changes calculated
                objects[i].step(passDeltaV);               // Velocity changes passed
        };	
}

void ObjectSystem::getDeltaV(double* deltaV, int asker) {
	for(int i=0; i<ObjectSystem::size; i++) {
		if(i != asker) {
			ObjectSystem::getDeltaVperObject(deltaV, ObjectSystem::objects + i, ObjectSystem::objects + asker);
		}
	}
	
}

void ObjectSystem::getDeltaVperObject(double* deltaV, PointObject* asker, PointObject* target) {
	double dx[3];
	getDisplacement(dx,asker->getPosition(),target->getPosition());
	double result = (target->getMass())*(1.0/(dx[0]*dx[0]+dx[1]*dx[1]+dx[2]*dx[2]));
		//Note asker mass missing to apply force	
	deltaV[0] = dx[0]*result;
	deltaV[1] = dx[1]*result;
	deltaV[2] = dx[2]*result;
}

void ObjectSystem::getDisplacement(double* dx, double* a, double* b) {
	for(int i = 0; i<3; i++) {
		dx[i] = a[i]-b[i];
	}
}

/*
*   Utility Functions:
*/


void ObjectSystem::setMembers(PointObject* passObjects, int passSize) {
	ObjectSystem::objects = passObjects;
	ObjectSystem::size = passSize;
}
