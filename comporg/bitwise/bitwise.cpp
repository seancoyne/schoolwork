/*
Sean Coyne
Computer Organization
Programming Project 2
*/
/*********************************************************
Bitwise Operations Calculator
This program will accepts 2 hexadecimal operands and 
a bitwise operator.  It will then perform the bitwise 
operation on the strings and return the result.
AND &, OR |, XOR ^, right shift >>, left shift, and
complement ~ are the operators available.
*********************************************************/
#include <iostream.h>
#include <stdlib.h>
#include <stdio.h>

void main(void){
	int operand1;	//hexadecimal operand
	int operand2;	//hexadecimal operand
	int bitop;	//bitwise operator
	int solution;	//solution to operation
	
	do{
		system("cls");
		cout << "Choose Bitwise operator" << endl
		     << "1. AND &" << endl
		     << "2. OR |" << endl
		     << "3. XOR ^" << endl
		     << "4. Right Shift >>" << endl
		     << "5. Left Shift <<" << endl
		     << "6. Complement ~" << endl;
		cout << "Enter number 1-6: ";
		cin >> bitop;
	}while(bitop < 1 || bitop > 6);
	
	cout << "Input Operand 1 in Hexadecimal (ex 0xABC): ";
	cin >> operand1;		
	
	switch(bitop){
		case 1:
			//AND operation
			cout << "Input Operand 2 in Hexadecimal (ex 0xABC): ";
			cin >> operand2;
			solution = operand1 & operand2;
			break;		
		case 2:
			//OR operation
			cout << "Input Operand 2 in Hexadecimal (ex 0xABC): ";
			cin >> operand2;			
			solution = operand1 | operand2;		
			break;		
		case 3:
			//XOR operation
			cout << "Input Operand 2 in Hexadecimal (ex 0xABC): ";
			cin >> operand2;
			solution = operand1 ^ operand2;		
			break;		
		case 4:
			//Right Shift operation
			cout << "Input Operand 2 in Decimal: ";
			cin >> operand2;
			solution = operand1 >> operand2;		
			break;		
		case 5:
			//Left Shift operation
			cout << "Input Operand 2 in Decimal: ";
			cin >> operand2;
			//be sure to turn off left most bits (bits above 16)
			solution = (operand1 << operand2) & ~ 0xFFFF0000;
			break;
		case 6:
			//Complement operation
			solution = ~operand1;
			//turn off left most bits
			solution = solution & ~ 0xFFFF0000;
			break;
		default:
			//ERROR in bitwise operator
			cout << "error" << endl;
			system("pause");
			exit(0);
			break;
	}
	//print operators and solutions
	printf("Operand 1: %X\n", operand1);
	if(bitop != 6){
		printf("Operand 2: %X\n", operand2);	
	}
	printf("Solution is: %X\n", solution);
	system("pause");
}
