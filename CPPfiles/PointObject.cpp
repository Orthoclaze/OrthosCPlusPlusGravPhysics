// in SecondClass.cpp

#include "PointObject.h"
#include <stdio.h>
#include <iostream>
 
using namespace std;

void PointObject::print() {
	cout << "Position is " 
		<< position[0] << " "
		<< position[1] << " "
		<< position[2] << " ";
	cout << "Velocity is " 
		<< velocity[0] << " "
		<< velocity[1] << " "
		<< velocity[2] << " "
		<< endl;
}

void PointObject::step(double* deltaV) {
	for (int i=0; i<3; i++) {
		position[i]+=(velocity[i]+deltaV[i]);
		velocity[i]+=(deltaV[i]);
	}
}

/*
void PointObject::passObjects(double* array,int indexException) {
	system.exception = indexException;
	system.objects = array;
}
*/

void PointObject::setPosition(double x, double y, double z) {
	position[0] = x;
	position[1] = y;
	position[2] = z;
}

void PointObject::setVelocity(double x, double y, double z) {
	velocity[0] = x;
	velocity[1] = y;
	velocity[2] = z;
}

void PointObject::setMass(double passMass) {
	mass = passMass;
}

double PointObject::getMass() {
	return mass;
}

double* PointObject::getPosition() {
	return position;	
}

double* PointObject::getLatestDeltaV() {
	return latestDeltaV;
}

/*
void setObSys(ObjectSystem* passObSys) {
	obSys = passObSys;
}
*/
