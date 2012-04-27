/*
Sean Coyne
Assignment 2
Rock Paper Scissors
CS244
*/
#include <iostream.h>
#include <stdlib.h>
#include <time.h>

void main(void)
	{
	//variables
	int CompChoice, PlayerChoice;		
	int NumTies, NumWins, NumLosses;	
	char PlayAgain;				
	char PlayerName[16];			
	char CompWeapon, PlayerWeapon;	
	
	//get player name
	cout << "Welcome to Rock, Paper, Scissors.\n"
	     << "What is your name?(15 Characters Max) ";
	cin.getline(PlayerName, 16);
	
	//initialize variables
	PlayAgain = 'Y';
	NumTies = 0;
	NumWins = 0;
	NumLosses = 0;
	
	do
		{
		//display choices
		system("cls");
		cout << "\nThe rules of the game are as follows:\n"
		     << endl
		     << "Scissors cut Paper\n"
		     << "Paper covers Rock\n"
		     << "Rock breaks Scissors\n"
		     << "Ties are allowed\n"
		     << endl << endl
		     << "(1) Rock\n"
		     << "(2) Paper\n"
		     << "(3) Scissors\n"
		     << endl
		     << "What weapon would you like to use?(1-3) ";
		
		//get choices
		cin >> PlayerChoice;
		while (PlayerChoice < 1 || PlayerChoice > 3)
			{
			cout << "Invalid Choice. What weapon would you like to use? ";
			cin >> PlayerChoice;
			}
		
		srand((unsigned int) time(0));
		CompChoice = 1 + rand() % 3;
		
		
		//convert numeric weapon choice to characters and display choices for both players
		switch(CompChoice)
			{
			case 1:
				CompWeapon = 'R';
				break;
			case 2:
				CompWeapon = 'P';
				break;
			case 3: 
				CompWeapon = 'S';
				break;
			}
		
		switch(PlayerChoice)
			{
			case 1:
				PlayerWeapon = 'R';
				break;
			case 2:
				PlayerWeapon = 'P';
				break;
			case 3: 
				PlayerWeapon = 'S';
				break;
			}
			
		cout << endl << PlayerName << " - " << PlayerWeapon << " Computer - " << CompWeapon << endl;
				
		//compare weapons and decide winner
		switch(PlayerChoice)
			{
			case 1:
				switch(CompChoice)
					{
					case 1:
						cout << endl << "It's a Tie!! \n";		//tie
						NumTies++;
						break;
					case 2:
						cout << endl << "Computer Wins!! \n";		//loss
						NumLosses++;
						break;
					case 3:
						cout << endl << "You Win!! \n";			//win
						NumWins++;
						break;	
					}
				break;
			case 2:
				switch(CompChoice)
					{
					case 1:
						cout << endl << "You Win!! \n";			//win
						NumWins++;
						break;
					case 2:
						cout << endl << "It's a Tie!! \n";		//tie
						NumTies++;
						break;
					case 3:
						cout << endl << "Computer Wins!! \n";		//loss
						NumLosses++;
						break;
					}
				break;
			case 3:
				switch(CompChoice)
					{
					case 1:
						cout << endl << "Computer Wins!! \n";		//loss
						NumLosses++;
						break;
					case 2:
						cout << endl << "You Win!! \n";			//win
						NumWins++;
						break;
					case 3:
						cout << endl << "It's a Tie!! \n";		//tie
						NumTies++;
						break;
					}
				break;
			}
		
		//ask to play again or end game
		cout << "Would you like to play again? (y for Yes, n for No) ";
		cin >> PlayAgain;
		}
	while (PlayAgain == 'y' || PlayAgain == 'Y');
	
	//list record for player
	cout << endl << "SCORE - (W-L-T)" << endl << endl
	     << PlayerName << " - (" << NumWins << " - " << NumLosses << " - " << NumTies << ")" << endl;
	
	system("pause");
	}