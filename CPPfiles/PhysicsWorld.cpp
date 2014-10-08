// in myclass.cpp

#include "PhysicsWorld.h"

#include <stdio.h>
#include <iostream>

using namespace std;

void PhysicsWorld::print() {
	for (int i=0; i<NUMBEROFOBJECTS; i++) {
		cout << "Object " << i << " :"; 
		objects[i].print();
	};
}

void PhysicsWorld::step() {
	obSys.step();
	cout << "physics world step complete" << endl;
}

PhysicsWorld::PhysicsWorld() {
	for(int i=0;i<NUMBEROFOBJECTS;i++) {
		objects[i].setPosition(i*1.0,0.0,0.0);
		objects[i].setVelocity(0.0,i*1.0,i*2.0);
		objects[i].setMass(1.0);
	}

	PointObject* pass = objects;
	obSys.setMembers(pass,NUMBEROFOBJECTS);
}
