#include "relay.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int* time_ptr1;
int* time_ptr2;
int* timetogo;
int run;
int change;

void togglePtr() {
	if (change) {timetogo = time_ptr1; change = 0;}// printf("change tog");}
	else {timetogo = time_ptr2; change = 1;}// printf("tog");}
}

void incrementTime() {
	if (change) {*time_ptr2 = *time_ptr2 - 2;}// printf("change increment\n");}
	else {*time_ptr1 = *time_ptr1 - 2;} //printf("increment\n");}
	togglePtr();
}

void Allocate(int* timesend) {
	change = 0;
	
	time_ptr1 = (int*)malloc(sizeof(int));
	time_ptr2 = (int*)malloc(sizeof(int));  
	timetogo = (int*)malloc(sizeof(int)); 
	
	timesend = timetogo;

	*time_ptr1 = 60;
	*time_ptr2 = 59;
	//return timetogo;
}

void Deallocate() {
	free(time_ptr1);
	free(time_ptr2);
	free(timetogo);
}

void Tick() {
	incrementTime();
}

int Read() {
	return *timetogo;
}
