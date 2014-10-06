#include "ObjectSystem.h"

#include <stdio.h>
#include <iostream>

using namespace std;

void ObjectSystem::step() {
	//cout << "obSys step" << endl;
	double passDeltaV[3];
        for (int i=0; i<2; i++) {
		ObjectSystem::getDeltaV(passDeltaV, i);
		//cout << "	got a deltaV" << endl;
                objects[i].step(passDeltaV);
		//cout << "	passed successful" << endl;
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

void ObjectSystem::setMembers(PointObject* passObjects, int passSize) {
	ObjectSystem::objects = passObjects;
	ObjectSystem::size = passSize;
}
