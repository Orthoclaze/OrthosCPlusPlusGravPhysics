// in myclass.cpp

#include "PhysicsWorld.h"

#include <stdio.h>
#include <iostream>

using namespace std;

void PhysicsWorld::print() {
	for (int i=0; i<2; i++) {
		cout << "Object " << i << " :"; 
		objects[i].print();
	};
}

void PhysicsWorld::step() {
	obSys.step();
	cout << "physics world step complete" << endl;
}

PhysicsWorld::PhysicsWorld() {
	objects[0].setPosition(2.0,2.0,2.0);
	objects[0].setVelocity(0.1,0.0,0.0);
	objects[1].setPosition(-2.0,-2.0,-2.0);
	objects[1].setVelocity(0.0,0.1,0.0);
	objects[0].setMass(1.0);
	objects[1].setMass(1.0);

	PointObject* pass = objects;
	obSys.setMembers(pass,2);
}
