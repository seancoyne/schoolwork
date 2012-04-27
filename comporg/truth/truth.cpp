/*
Sean Coyne
CS 310
Computer Organization
October 2002
Boolean Function Calculator
/*

/*******************************************************************************
Program Description:

This program reads in pairs boolean functions, with no more than three different
variables, and compares each two to determine if the two functions are 
equivalent. It does this by first, creating the truth tables for each function 
and then, by solving each.  The program will then compare the resluts to 
determine if the functions are equal.   There also can be no more than 3 
operands for a multiplication string (ie A*B*C is ok but A*B*C*C' is not.)
The program cannot convert any function with parentheses to postfix form, but
for functions with parentheses the post fix form must be given in the file. To
supply a postfix function place a "X" at the beginning of the function so the 
program will know that it is in postfix form and not infix. Parentheses are not
supported in the functions.
A must be the First Variable
B must be the second Variable
C must be the third variable
*******************************************************************************/

#include <iostream.h>
#include <math.h>
#include <stdlib.h>
#include <fstream.h>

//Constants
#define MaxPairs 6									//constant - Maximum Number of Pairs of functions allowed in the source file
#define MaxLength 30									//constant - Maximum Length, in characters, allowed for each Function in the source file

//Variables
char Function1[MaxPairs][MaxLength]; 							//character string to hold Function1 once it is read from source file
char Function2[MaxPairs][MaxLength];							//character string to hold Function2 once it is read from source file
int numVarF1[MaxPairs];									//number of variables in function1
int numVarF2[MaxPairs];									//number of variables in function2
int numPairs;										//actual number of pairs of functions in the source file
int TruthTableF1[MaxPairs][8][MaxLength];						//Truth Table for all function 1
int TruthTableF2[MaxPairs][8][MaxLength];						//Truth Table for all function 1
int OrigTableF1[MaxPairs][8][MaxLength];						//holds original truth table for Function 1
int OrigTableF2[MaxPairs][8][MaxLength];						//holds original truth table for Function 2
int ResultsF1[MaxPairs][8];								//results for Function 1
int ResultsF2[MaxPairs][8];								//Results for Function 2
int equalFlag[MaxPairs];								//flag for function equality

//Funtion Prototypes
void readFile(void);									//function to read in functions from file
int findVars(char []);									//returns the number of variables in a function as an integer
void createTable(void);									//creates truth tables for function
void solveTables(void);									//solves each truth table
void printTable(int Table[MaxPairs][8][MaxLength], int);				//prints tables on screen
void saveResults(int Table[MaxPairs][8][MaxLength], int, int Results[MaxPairs][8]);	//saves results from truth table into results array		
void printResults(void);								//prints results on screen

//main function
void main(void){
	//set result arrays to zeros
	//and set so that functions are equal by default
	for(int a = 0; a < MaxPairs; a++){
		for(int b = 0; b < 8; b++){
			ResultsF1[a][b] = 0;
			ResultsF2[a][b] = 0;
		}
		equalFlag[a] = true;
	}
	
	//read in functions from source file
	readFile();
	
	//determine number of variables in each function
	for(int x = 0; x < MaxPairs; x++){
		numVarF1[x] = findVars(Function1[x]);
		numVarF2[x] = findVars(Function2[x]);
		
		//numVarF1 must equal numVarF2
		if(numVarF1[x] != numVarF2[x]){
			cout << "Error in Function " << x << endl;
			system("pause");
			exit(EXIT_FAILURE);
		}
	}
		
	//develop truth tables for each function
	createTable();
	
	//solve each function
	solveTables();
	
	//save results to result arrays
	for (x = 0; x < MaxPairs; x++){
		saveResults(TruthTableF1, x, ResultsF1);
		saveResults(TruthTableF2, x, ResultsF2);
	}
	
	//compare results
	for (x = 0; x < MaxPairs; x++){
		for (int z = 0; z < 8; z++){
			//compare tables for each function if they are the same the functions are equal
			if (ResultsF1[x][z] != ResultsF2[x][z]){
				equalFlag[x] = false;
				break;
			}
		}
	}	
	//print results
	printResults();

}

void printResults(void){
	//print results
	for (int x = 0; x < MaxPairs; x++){
		//Function1
		cout << endl<< "TABLES" << endl;
		cout << endl<< "F1" << endl;
		for(int z = 0; z < 8; z ++){
			for (int y = 0; y < MaxLength; y++){
				if ((OrigTableF1[x][z][y] != 9) && (OrigTableF1[x][z][y] != 8)){
					switch (OrigTableF1[x][z][y]){
						case 6:
							cout << "\' ";
							break;
						case 2:
							cout << "+ ";
							break;
						case 3:
							cout << "* ";
							break;
						default:
							cout << OrigTableF1[x][z][y] << " ";
							break;
					}
				}
				
			}
			cout << endl;
		}
		//Function2
		cout << endl << "F2" << endl;
		for(z = 0; z < 8; z ++){
			for (int y = 0; y < MaxLength; y++){
				if ((OrigTableF2[x][z][y] != 9) && (OrigTableF2[x][z][y] != 8)){
					switch (OrigTableF1[x][z][y]){
						case 6:
							cout << "\' ";
							break;
						case 2:
							cout << "+ ";
							break;
						case 3:
							cout << "* ";
							break;
						default:
							cout << OrigTableF2[x][z][y] << " ";
							break;
					}
				}
				
			}
			cout << endl;
		}
		cout << endl << "RESULTS" << endl;
		cout << endl << "F1  F2" << endl;
		for(z = 0; z < 8; z ++){
			cout << ResultsF1[x][z] << "    " << ResultsF2[x][z] << endl;
		}
		//determine equality
		if(equalFlag[x] == 1){
			cout << "F1 and F2 are EQUAL" << endl;
		}
		else{
			cout << "F1 and F2 are NOT EQUAL" << endl;
		}
		system("pause");
		system("cls");
	}
}

void saveResults(int Table[MaxPairs][8][MaxLength], int TableNum, int Results[MaxPairs][8]){
	//save results to result array
		for (int z = 0; z < 8; z++){
		for (int y = 0; y < MaxLength; y++){
			if ((Table[TableNum][z][y] != 9) && (Table[TableNum][z][y] != 8)){
				Results[TableNum][z] = Table[TableNum][z][y];
			}
		}
	}
}

void printTable(int Table[MaxPairs][8][MaxLength], int TableNum){
	//print a table to screen 
	//used for debugging purposes
	for (int z = 0; z < 8; z++){
		for (int y = 0; y < MaxLength; y++){
			if ((Table[TableNum][z][y] != 9) && (Table[TableNum][z][y] != 8)){
				cout << Table[TableNum][z][y];
			}
			cout << " ";
		}
		cout << endl;
	}
}

void solveTables(){
	int nomultF1[MaxPairs], nomultF2[MaxPairs];
	int a;
	
	for (int z = 0; z < MaxPairs; z++){
		nomultF1[z] = 1;
		nomultF2[z] = 1;
	}
	//step through each column of each row of each table and decode
			/*
				KEY
				0 = 0 (FALSE)
				1 = 1 (TRUE)
				2 = + (OR)
				3 = * (AND)
				4 = (
				5 = )
				6 = ' (NOT)
				9 = NULL (NO DATA)
			*/
//NEGATION
	for (int x = 0; x < MaxPairs; x++){
		for (int z = 0; z < 8; z++){
			for (int y = 0; y < MaxLength; y++){
				if (TruthTableF1[x][z][0] == 8){
						x++;
						z = 0;
						y = 0;
				}
				//check for not
				switch (TruthTableF1[x][z][y]){
					case 6:		
						switch (TruthTableF1[x][z][y-1]){
							case 0:
							case 1:
								//if a not change previous char to opposite (unless its another operator)
								TruthTableF1[x][z][y-1] = !TruthTableF1[x][z][y-1];
								//get rid of not opperators (unless they follow a parentheses)
								for(a = y; a < (MaxLength - y); a++){
									TruthTableF1[x][z][a] = TruthTableF1[x][z][a+1];
								}
								TruthTableF1[x][z][a] = 9;
								break;
							default:
								break;
						}
				}
				if (TruthTableF2[x][z][0] == 8){
						x++;
						z = 0;
						y = 0;
					}
				switch (TruthTableF2[x][z][y]){
					case 6:		
						switch (TruthTableF2[x][z][y-1]){
							case 0:
							case 1:
								//if a not change previous char to opposite (unless its another operator)
								TruthTableF2[x][z][y-1] = !TruthTableF2[x][z][y-1];
								//get rid of not opperators (unless they follow a parentheses)
								for(a = y; a < (MaxLength - y); a++){
									TruthTableF2[x][z][a] = TruthTableF2[x][z][a+1];
								}
								TruthTableF2[x][z][a] = 9;
								break;
							default:
								break;
						}
				}
			}
		}
	}
	
//MULTIPLICATION	
	for(x = 0; x < MaxPairs; x++){
		for(z = 0; z < 8; z++){
			//function1
			for(int y = 0; y < MaxLength; y++){
				//look for multiplication
					if (TruthTableF1[x][z][0] == 8){
						x++;
						z = 0;
						y = 0;
					}
					if (TruthTableF1[x][z][y] == 3){
						//replace answer to multiplication for the operator
						TruthTableF1[x][z][y] = (TruthTableF1[x][z][y-1] && TruthTableF1[x][z][y+1]);
						//remove preceeding operand
						for (int a = (y - 1); a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF1[x][z][a] = TruthTableF1[x][z][a+1];
						}
						//remove following operand (going to be shifted to the left now)
						for (a = y; a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF1[x][z][a] = TruthTableF1[x][z][a+1];
						}
						//decrement counter to account for the shift
						y--;
					}
			}
			//function2
			for(y = 0; y < MaxLength; y++){
				//look for multiplication
					if (TruthTableF1[x][z][0] == 8){
						x++;
						z = 0;
						y = 0;
					}
					if (TruthTableF2[x][z][y] == 3){
						//replace answer to multiplication for the operator
						TruthTableF2[x][z][y] = (TruthTableF2[x][z][y-1] && TruthTableF2[x][z][y+1]);
						//remove preceeding operand
						for (a = (y - 1); a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF2[x][z][a] = TruthTableF2[x][z][a+1];
						}
						//remove following operand (going to be shifted to the left now)
						for (a = y; a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF2[x][z][a] = TruthTableF2[x][z][a+1];
						}
						//decrement counter to account for the shift
						y--;
					}
			}
		}
	}

//ADDITION
	for(x = 0; x < MaxPairs; x++){
		for(z = 0; z < 8; z++){
			//function1
			for(int y = 0; y < MaxLength; y++){
				//look for addition
					if (TruthTableF1[x][z][0] == 8){
						x++;
						z = 0;
						y = 0;
					}
					if (TruthTableF1[x][z][y] == 2){
						//replace answer to addition for the operator
						TruthTableF1[x][z][y] = (TruthTableF1[x][z][y-1] || TruthTableF1[x][z][y+1]);
						
						//remove preceeding operand
						for (int a = (y - 1); a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF1[x][z][a] = TruthTableF1[x][z][a+1];
						}
						//remove following operand (going to be shifted to the left now)
						for (a = y; a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF1[x][z][a] = TruthTableF1[x][z][a+1];
						}
						//decrement counter to account for the shift
						y--;	
					}
			}
			//function2
			for(y = 0; y < MaxLength; y++){
				//look for addition
					if (TruthTableF2[x][z][0] == 8){
						x++;
						z = 0;
						y = 0;
					}
					if (TruthTableF2[x][z][y] == 2){
						//replace answer to addition for the operator
						TruthTableF2[x][z][y] = (TruthTableF2[x][z][y-1] || TruthTableF2[x][z][y+1]);
						
						//remove preceeding operand
						for (a = (y - 1); a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF2[x][z][a] = TruthTableF2[x][z][a+1];
						}
						//remove following operand (going to be shifted to the left now)
						for (a = y; a < (MaxLength - y); a++){
							//shift all after operand to the left
							TruthTableF2[x][z][a] = TruthTableF2[x][z][a+1];
						}
						//decrement counter to account for the shift
						y--;
					}
			}
		}
	}

//PARENTHESES
	int postfixF1[MaxPairs];
	int postfixF2[MaxPairs];
	int b;
	for (x = 0; x < MaxPairs; x++){
		postfixF1[x] = 0;
		postfixF2[x] = 0;
	}	
	//for this use postfix form to get rid of parentheses
	//determine if in postfix form
	for (x = 0; x < MaxPairs; x++){
		if (TruthTableF1[x][0][0] != 8){
			postfixF1[x] = 0;
		}
		else{
			postfixF1[x] = 1;
		}
	}

	for (x = 0; x < MaxPairs; x++){
		if (TruthTableF2[x][0][0] != 8){
			postfixF2[x] = 0;
		}
		else{
			postfixF2[x] = 1;
		}
	}
	
	//remember that the first element (0) is an 8 so start at 1
	for (x = 0; x < MaxPairs; x++){
		if (postfixF1[x] == 1){
			for (z = 0; z < 8; z++){
				for (int y = 1; y < MaxLength; y++){
					switch(TruthTableF1[x][z][y]){
						case 2:
							//add previous 2 numbers together
							TruthTableF1[x][z][y] = (TruthTableF1[x][z][y-1] || TruthTableF1[x][z][y-2]);
							//shift two places
							for (b = y; b < (MaxLength - y); b++){
								TruthTableF1[x][z][b-2] = TruthTableF1[x][z][b];
							}
							y--;
							y--;
							break;
						case 3:
							//multiply previous 2 numbers together
							TruthTableF1[x][z][y] = (TruthTableF1[x][z][y-1] && TruthTableF1[x][z][y-2]);
							//shift two places
							for (b = y; b < (MaxLength - y); b++){
								TruthTableF1[x][z][b-2] = TruthTableF1[x][z][b];
							}
							y--;
							y--;
							break;
						case 6:
							//make previous number opposite and store over operator
							TruthTableF1[x][z][y] = !TruthTableF1[x][z][y-1];
							//shift one place
							for (b = y; b < (MaxLength - y); b++){
								TruthTableF1[x][z][b-1] = TruthTableF1[x][z][b];
							}
							y--;
							break;
						case 0:
						case 1:
						case 9:
						case 8:
							break;	
					};
					switch(TruthTableF2[x][z][y]){
						case 2:
							//add previous 2 numbers together
							TruthTableF2[x][z][y] = (TruthTableF2[x][z][y-1] || TruthTableF2[x][z][y-2]);
							//shift two places
							for (b = y; b < MaxLength - y; b++){
								TruthTableF2[x][z][b-2] = TruthTableF2[x][z][b];
							}
							y--;
							y--;
							break;
						case 3:
							//multiply previous 2 numbers together
							TruthTableF2[x][z][y] = (TruthTableF2[x][z][y-1] && TruthTableF2[x][z][y-2]);
							//shift two places
							for (b = y; b < MaxLength - y; b++){
								TruthTableF2[x][z][b-2] = TruthTableF2[x][z][b];
							}
							y--;
							y--;
							break;
						case 6:
							//make previous number opposite and store over operator
							TruthTableF2[x][z][y] = !TruthTableF2[x][z][y-1];
							//shift one place
							for (b = y; b < MaxLength - y; b++){
								TruthTableF2[x][z][b-1] = TruthTableF2[x][z][b];
							}
							y--;
							break;
						case 0:
						case 1:
						case 9:
						case 8:
							break;	
					};
				}
			}	
		}
	}
}

void createTable(void){
	int x,y,z; //counter
	//go through each function and create listing for each row
	for (x = 0; x < MaxPairs; x++){
		for (y = 0; y < MaxLength; y++){
			//create truthtable for function1 functions
			if (numVarF1[x] == 3){
				switch (Function1[x][y]){
					case 'A':
					case 'a':
						TruthTableF1[x][0][y] = 0;
						TruthTableF1[x][1][y] = 0;
						TruthTableF1[x][2][y] = 0;
						TruthTableF1[x][3][y] = 0;
						TruthTableF1[x][4][y] = 1;
						TruthTableF1[x][5][y] = 1;
						TruthTableF1[x][6][y] = 1;
						TruthTableF1[x][7][y] = 1;
						break;
					case 'B':
					case 'b':
						TruthTableF1[x][0][y] = 0;
						TruthTableF1[x][1][y] = 0;
						TruthTableF1[x][2][y] = 1;
						TruthTableF1[x][3][y] = 1;
						TruthTableF1[x][4][y] = 0;
						TruthTableF1[x][5][y] = 0;
						TruthTableF1[x][6][y] = 1;
						TruthTableF1[x][7][y] = 1;
						break;
					case 'C':
					case 'c':
						TruthTableF1[x][0][y] = 0;
						TruthTableF1[x][1][y] = 1;
						TruthTableF1[x][2][y] = 0;
						TruthTableF1[x][3][y] = 1;
						TruthTableF1[x][4][y] = 0;
						TruthTableF1[x][5][y] = 1;
						TruthTableF1[x][6][y] = 0;
						TruthTableF1[x][7][y] = 1;
						break;
					case '+':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 2;
						}

						break;
					case '*':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 3;
						}
						break;

					case '(':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 4;
						}
						break;
					case ')':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 5;
						}
						break;
					case '\'':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 6;
						}
						break;					
					case 'X':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 8;
						}
						break;	
					default:
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}
						break;
				};
			}
			if (numVarF1[x] == 2){
				switch (Function1[x][y]){
					case 'A':
					case 'a':
						TruthTableF1[x][0][y] = 0;
						TruthTableF1[x][1][y] = 0;
						TruthTableF1[x][2][y] = 1;
						TruthTableF1[x][3][y] = 1;
						TruthTableF1[x][4][y] = 9;
						TruthTableF1[x][5][y] = 9;
						TruthTableF1[x][6][y] = 9;
						TruthTableF1[x][7][y] = 9;						
						break;
					case 'B':
					case 'b':
						TruthTableF1[x][0][y] = 0;
						TruthTableF1[x][1][y] = 1;
						TruthTableF1[x][2][y] = 0;
						TruthTableF1[x][3][y] = 1;
						TruthTableF1[x][4][y] = 9;
						TruthTableF1[x][5][y] = 9;
						TruthTableF1[x][6][y] = 9;
						TruthTableF1[x][7][y] = 9;
						break;
					case 'C':
					case 'c':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}
						break;
					case '+':
						for (z = 0; z < 4; z++){
							TruthTableF1[x][z][y] = 2;
						}
						for (z = 4; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}
						break;
					case '*':
						for (z = 0; z < 4; z++){
							TruthTableF1[x][z][y] = 3;
						}
						for (z = 4; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}
						break;

					case '(':
						for (z = 0; z < 4; z++){
							TruthTableF1[x][z][y] = 4;
						}
						for (z = 4; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}
						break;
					case ')':
						for (z = 0; z < 4; z++){
							TruthTableF1[x][z][y] = 5;
						}
						for (z = 4; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}						
						break;
					case '\'':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 6;
						}
						for (z = 4; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}						
						break;					
					case 'X':
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 8;
						}
						break;	
					default:
						for (z = 0; z < 8; z++){
							TruthTableF1[x][z][y] = 9;
						}
						break;
				};
			}
			if (numVarF1[x] == 0){
				cout << "ERROR no variables in function" << endl;
			}
			//create truthtable for function2 functions
			if (numVarF2[x] == 3){
				switch (Function2[x][y]){
					case 'A':
					case 'a':
						TruthTableF2[x][0][y] = 0;
						TruthTableF2[x][1][y] = 0;
						TruthTableF2[x][2][y] = 0;
						TruthTableF2[x][3][y] = 0;
						TruthTableF2[x][4][y] = 1;
						TruthTableF2[x][5][y] = 1;
						TruthTableF2[x][6][y] = 1;
						TruthTableF2[x][7][y] = 1;
						break;
					case 'B':
					case 'b':
						TruthTableF2[x][0][y] = 0;
						TruthTableF2[x][1][y] = 0;
						TruthTableF2[x][2][y] = 1;
						TruthTableF2[x][3][y] = 1;
						TruthTableF2[x][4][y] = 0;
						TruthTableF2[x][5][y] = 0;
						TruthTableF2[x][6][y] = 1;
						TruthTableF2[x][7][y] = 1;
						break;
					case 'C':
					case 'c':
						TruthTableF2[x][0][y] = 0;
						TruthTableF2[x][1][y] = 1;
						TruthTableF2[x][2][y] = 0;
						TruthTableF2[x][3][y] = 1;
						TruthTableF2[x][4][y] = 0;
						TruthTableF2[x][5][y] = 1;
						TruthTableF2[x][6][y] = 0;
						TruthTableF2[x][7][y] = 1;
						break;
					case '+':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 2;
						}

						break;
					case '*':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 3;
						}
						break;

					case '(':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 4;
						}
						break;
					case ')':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 5;
						}
						break;
					case '\'':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 6;
						}
						break;					
					case 'X':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 8;
						}
						break;	
					default:
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}
						break;
				};
			}
			if (numVarF2[x] == 2){
				switch (Function2[x][y]){
					case 'A':
					case 'a':
						TruthTableF2[x][0][y] = 0;
						TruthTableF2[x][1][y] = 0;
						TruthTableF2[x][2][y] = 1;
						TruthTableF2[x][3][y] = 1;
						TruthTableF2[x][4][y] = 9;
						TruthTableF2[x][5][y] = 9;
						TruthTableF2[x][6][y] = 9;
						TruthTableF2[x][7][y] = 9;						
						break;
					case 'B':
					case 'b':
						TruthTableF2[x][0][y] = 0;
						TruthTableF2[x][1][y] = 1;
						TruthTableF2[x][2][y] = 0;
						TruthTableF2[x][3][y] = 1;
						TruthTableF2[x][4][y] = 9;
						TruthTableF2[x][5][y] = 9;
						TruthTableF2[x][6][y] = 9;
						TruthTableF2[x][7][y] = 9;
						break;
					case 'C':
					case 'c':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}
						break;
					case '+':
						for (z = 0; z < 4; z++){
							TruthTableF2[x][z][y] = 2;
						}
						for (z = 4; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}
						break;
					case '*':
						for (z = 0; z < 4; z++){
							TruthTableF2[x][z][y] = 3;
						}
						for (z = 4; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}
						break;

					case '(':
						for (z = 0; z < 4; z++){
							TruthTableF2[x][z][y] = 4;
						}
						for (z = 4; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}
						break;
					case ')':
						for (z = 0; z < 4; z++){
							TruthTableF2[x][z][y] = 5;
						}
						for (z = 4; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}						
						break;
					case '\'':
						for (z = 0; z < 4; z++){
							TruthTableF2[x][z][y] = 6;
						}
						for (z = 4; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}						
						break;					
					case 'X':
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 8;
						}
						break;	
					default:
						for (z = 0; z < 8; z++){
							TruthTableF2[x][z][y] = 9;
						}
						break;
				};
			}
			if (numVarF2[x] == 0){
				cout << "ERROR no variables in function" << endl;
			}
		}
	}
	//save copy of orig truth table
	for (x = 0; x < MaxPairs; x++){
		for (z = 0; z < 8; z++){
			for (y = 0; y < MaxLength; y++){
				OrigTableF1[x][z][y] = TruthTableF1[x][z][y];
				OrigTableF2[x][z][y] = TruthTableF2[x][z][y];
			}
		}
	}
				
}

void readFile(void){
//reads in all pairs of functions from source file into 2 arrays	
	
	fstream datafile;				//data file to be read in
	
	datafile.open("functions.dat",ios::in);		//open file "functions.dat" in same directory
	
	for(int x = 0; x < MaxPairs; x++){		//read each pair of functions into char arrays
		if(!datafile.eof()){
			datafile.getline(Function1[x],41);
			datafile.getline(Function2[x],41);
		}
	}
	datafile.close();
	
}

int findVars(char function[MaxLength]){
	int numA = 0; 	//number of A's in function i.e. A+B+A' = 2 A's
	int numB = 0;	//number of B's in function
	int numC = 0;	//number of C's in function
	int numVars;  	//number of different variables in funtion
		
	//count number of each variable
	for(int x = 0; x < MaxLength; x++){	
		switch (function[x]){
			case 'A':
			case 'a':
				numA++;
				break;
			case 'B':
			case 'b':
				numB++;
				break;
			case 'C':
			case 'c':
				numC++;
				break;
			default:
				break;
		};
	}
	//count num different variables
		if(numA > 0){
			numVars = 1;
			if(numB > 0){
				numVars = 2;
			}
			if(numC > 0){
				numVars = 3;
			}
		}
		else{
			numVars = 0;
		}
	return numVars;
}