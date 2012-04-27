/*
Sean Coyne
Program # 1
Stacks and Queues
CS244
*/
#include <iostream.h>
#include <stdlib.h>
#include <iomanip.h>

#define ArraySize 5

//prototype definitions
void menu(void);
void stack(void);
void queue(void);
void add(int *, int *);
void removeQueue(int *, int *);
void removeStack(int *, int *);
void view(int [], int endmarker);

void main(void){
	menu();
}

void menu(void){
//main menu
	int menuchoice;
	system("cls");
	do{
		cout << "1. Emulate Stack" << endl
	     	     << "2. Emulate Queue" << endl
	     	     << "3. Exit" << endl
	     	     << "What would you like to do? ";
		cin >> menuchoice;
	}while(menuchoice < 1 || menuchoice > 3);
	switch(menuchoice){
		case 1: 
			stack();
			break;
		case 2:
			queue();
			break;
		case 3:
			break;
		default:
			cout << "ERROR!" << endl;
			break;
	}
}

void stack(void){
//stack menu
	int array[ArraySize];
	//initialize array
	for (int x=0; x < ArraySize; x++){
		array[x] = 0;
	}
	int endmarker = 0;
	int menuchoice;
	do{
		system("cls");
		cout << "S T A C K" << endl;
		do{
			cout << "1. Add" << endl
		     	     << "2. Remove" << endl
		     	     << "3. View Status" << endl
		     	     << "4. Exit" << endl
		     	     << "What would you like to do? ";
			cin >> menuchoice;
		}while(menuchoice < 1 || menuchoice > 4);
		switch(menuchoice){
			case 1: 
				add(array, &endmarker);
				break;
			case 2:
				removeStack(array, &endmarker);
				break;
			case 3:
				view(array, endmarker);
				break;
			case 4:
				break;
			default:
				cout << "ERROR!" << endl;
				break;
		}
	}while(menuchoice != 4);
}
void queue(void){
//queue menu
	int array[ArraySize];
	//initialize array
	for (int x=0; x < ArraySize; x++){
		array[x] = 0;
	}
	int endmarker = 0;
	int menuchoice;
	do{
		system("cls");
		cout << "Q U E U E" << endl;
		do{
			cout << "1. Add" << endl
		     	     << "2. Remove" << endl
		     	     << "3. View Status" << endl
		     	     << "4. Exit" << endl
		     	     << "What would you like to do? ";
			cin >> menuchoice;
		}while(menuchoice < 1 || menuchoice > 4);
		switch(menuchoice){
			case 1: 
				add(array, &endmarker);
				break;
			case 2:
				removeQueue(array, &endmarker);
				break;
			case 3:
				view(array, endmarker);
				break;
			case 4:
				break;
			default:
				cout << "ERROR!" << endl;
				break;
		}
	}while(menuchoice != 4);
}
void add(int *array, int *endmarker){
//adds item to end of stack or queue
	if (*endmarker != 5){
		int val;		//value to add
		cout << "What is the value you would like to add? ";
		cin >> val;
		array[*endmarker] = val;
		*endmarker += 1;
		cout << val << " added.";
		cout << endl << (ArraySize)-*endmarker << " Places left" << endl;
		system("pause");
	}
	else{
		cout << "Full.  Must Remove before you can add."  << endl;
	}
}
void removeQueue(int *array, int *endmarker){
//removes first value(s) from queue
	int num;		//number of elements to remove
	do{
		cout << "How many elements would you like to remove? ";
		cin >> num;
	}while(num > *endmarker || num < 0); 
	for(int y = 0; y < num; y++){
		for(int x = 1; x < ArraySize; x++){
			array[x-1] = array[x];
		}
		*endmarker = *endmarker - 1;
	}
	cout << "Removed first " << num << " element(s) from Queue." << endl;
	system("pause");
}
void removeStack(int *array, int *endmarker){
//removes top value(s) from stack
	int num;		//number of elements to remove
	cout << "How many elements would you like to remove? ";
	cin >> num;
	*endmarker = *endmarker - num;
	for(int x = *endmarker; x < ArraySize; x++){
		array[x] = 0;
	}
	cout << "Removed top " << num << " element(s) from stack." << endl;
	system("pause");
}
void view(int array[], int endmarker){
//shows current stack or queue and tells you if it is full or empty
	if (endmarker != 0){
		for (int x=0; x < ArraySize; x++){
			cout << array[x] << "  ";
		}
	}
	else{
		cout << "EMPTY" <<  endl;
	}
	if (endmarker >= ArraySize){
		cout << endl << "FULL" << endl;
	}
	else{
		cout << endl << (ArraySize)-endmarker << " Places left" << endl;
	}
	system("pause");
}