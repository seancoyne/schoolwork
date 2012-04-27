/*
Sean Coyne
CS244
Four Function Calculator
Assignment #3
*/

#include <iostream.h>
#include <stdlib.h>
#include <math.h>

//prototype definitions
void compute(int opp);
int menu(void);
void starbar(void);
void input(void);
void input_e(void);

//global variables
float num_1, num_2, mem_val = 0;

void main(void){
	int choice;
	char extra;

	//intro
	cout << endl << "C A L C U L A T O R " << endl << endl;
	starbar();
	cout << "This is a four function calculator " << endl
	     << "that uses two numbers at a time.  The " << endl
	     << "solution can be stored in memory to be " << endl
	     << "used later." << endl;
	starbar();
	system("pause");
		
	cout << endl << "Would you like to use the extra number\nlimiting features of this calculator?(y/n) ";
	cin >> extra;
	if (extra == 'y' || extra == 'Y'){
		//main loop
		do {
			input_e();
			choice = menu();
		}
		while (choice != 5);
	}
	else {
		//main loop
		do {
			input();
			choice = menu();
		}
		while (choice != 5);
	}
	//end program
	system("cls");
	cout << "Thank you for using the calculator." << endl;
	system("pause");
}

void input(void){
	char usemem;
	
	system("cls");
	
	//input
	cout << "Equations will be in the form of: " << endl << endl
	     << "Num1 opperation Num2" << endl
	     << "i.e.  2 + 3" << endl
	     << "There are no limitations on the numbers." << endl << endl;
	     
	//num1
	cout <<"Use value stored in memory (" << mem_val << ") as first number?(y/n) ";
	cin >> usemem;
	if ((usemem == 'y') || (usemem == 'Y')){
		num_1 = mem_val;
	}
	else {
		cout << "What is the first number? ";
		cin >> num_1;
	}
	
	//num2
	cout <<"Use value stored in memory (" << mem_val << ") as second number?(y/n) ";
	cin >> usemem;
	if ((usemem == 'y') || (usemem == 'Y')){
		num_2 = mem_val;
	}
	else {
		cout << "What is the second number? ";
		cin >> num_2;
	}
}

void input_e(void){
	char usemem;
	
	system("cls");
	
	//input
	cout << "Equations will be in the form of: " << endl << endl
	     << "Num1 opperation Num2" << endl
	     << "i.e.  2 + 3" << endl
	     << "Num1 and Num2 must be 15 units apart." << endl
	     << "If you do not enter valid numbers you will be\nprompted again until you do." << endl << endl;
	     
	do{		     
		//num1
		cout <<"Use value stored in memory (" << mem_val << ") as first number?(y/n) ";
		cin >> usemem;
		if ((usemem == 'y') || (usemem == 'Y')){
			num_1 = mem_val;
		}
		else {
			cout << "What is the first number? ";
			cin >> num_1;
		}
		
		//num2
		cout <<"Use value stored in memory (" << mem_val << ") as second number?(y/n) ";
		cin >> usemem;
		if ((usemem == 'y') || (usemem == 'Y')){
			num_2 = mem_val;
		}
		else {
			cout << "What is the second number? ";
			cin >> num_2;
		}
	}
	while((abs(num_1 - num_2) < 15)); //test for difference of 15 and if number is odd or even
}

int menu(void){
	int m_choice;
	char cont;
	
	//display choices and send to proper operation function
	do {
		system("cls");
		cout << endl << "C A L C U L A T O R " << endl << endl;
		starbar();
		cout << " 1. Add" << endl
		     << " 2. Subtract" << endl
		     << " 3. Multiply" << endl
		     << " 4. Divide" << endl;
		starbar();
		cout << "What operation whould you like to use? ";
		cin >> m_choice;
	}
	while (m_choice < 1 || m_choice > 5);
		
	switch(m_choice){
		case 1:
			compute(1);
			break;
		case 2:
			compute(2);
			break;
		case 3:
			compute(3);
			break;
		case 4:
			compute(4);
			break;
		default:
			cout << "ERROR!" << endl;
			break;
	}
	
	//prompt to continue to use calc
	cout << "Continue using calculator?(y/n) ";
	cin >> cont;
	switch(cont){
		case 'y':
		case 'Y':
			break;
		case 'n':
		case 'N':
			m_choice = 5;
			break;
		default:
			cout << "Invalid reponse.  Will continue to use calculator. " << endl;
			break;
	}
	
	return m_choice;
}
void compute(int opp){
	char mem_response;
	float answer;
	answer = 0;
	switch(opp){
		case 1:
			answer = num_1 + num_2;
			break;
		case 2:
			answer = num_1 - num_2;
			break;
		case 3:
			answer = num_1 * num_2;
			break;
		case 4:
			if (num_2 != 0){
				answer = num_1 / num_2;
				break;
			}
			else{
				
				do{
					cout << "ERROR! You cannot divide by zero." << endl;
					cout << "Second Number? ";
					cin >> num_2;
				}
				while (num_2 == 0);
				answer = num_1 / num_2;
				break;
			}
			
	}
	cout << endl << "The answer is " << answer <<  endl;

	//prompt to store in memory
	cout << "Store this answer to memory?(y or n) ";
	cin >> mem_response;

	switch(mem_response){
		case 'y':
		case 'Y':
			mem_val = answer;
			cout << mem_val << " stored in memory for use later." << endl;
			break;
		case 'n':
		case 'N':
			break;
		default:
			cout << "Invalid response.  Answer will not be stored in memory." << endl;
	}
		
	system("pause");
}
void starbar(void){
	int x;
	for (x = 1; x < 50; x++){
		cout << "*";
	}
	cout << endl;
}