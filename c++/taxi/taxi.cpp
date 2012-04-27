/*
	Sean Coyne
	Assignment # 1
	Taxi Service Fare Computation
*/
#include <iostream.h>
#include <stdlib.h>

void main (void)
	{
		//variables
		int town;
		const float InTownRate = 1.00;
		const float InnerTownRate = 0.75;
		const float OuterTownRate = 0.50;			
		float fare;
		int loopcnt = 1;  //loop counter
		
		while (loopcnt == 1) //loop program
			{
			
			//clear screen
			system("cls");
			
			//welcome
			cout << "Welcome to Reverend Jim\'s Taxi Service.\n"
			     << "The fares are as follows:\n"
			     <<	"In Town $" << InTownRate << endl
			     <<	"Inner Towns $" << InnerTownRate << " each\n"
			     << "Outer Towns $" << OuterTownRate << " each\n"
			     << "\n"
			     << "Please Enter the Town You Wish to Travel to. ";
		
			//input
			cin >> town;
			
			//decisions and computations
			if (town <= 4 && town >= 1)
				{
					fare = InTownRate + (town - 1) * (InnerTownRate);
					cout << endl
					     << "$" << InTownRate << " for in town rate." << endl
					     << (town - 1) << " Towns at " << InnerTownRate << " --- $" << (town - 1) * InnerTownRate << endl
					     << "--------------------------------\n"
					     << "Your Total Fare is: $" << fare << "." << endl
					     << endl
					     << "Thank you for riding!\n"
					     << endl;
				}
			else if (town > 4 && town <= 7)
				{
					fare = InTownRate + (3 * InnerTownRate) + ((town - 4) * OuterTownRate);
					cout << endl
					     << "$" << InTownRate << " for in town rate." << endl
					     << "3 Towns at " << InnerTownRate << " --- $" << 3 * InnerTownRate << endl
					     << (town - 4) << " Towns at " << OuterTownRate << " --- $" << (town - 4) * OuterTownRate << endl
					     << "--------------------------------\n" 
					     << "Your Total Fare is: $" << fare << "." << endl
					     << endl
					     << "Thank you for riding!\n"
					     << endl;
				}
			else
				{
					cout << endl
					     << "\aInvalid Town\n"
					     << endl;
					system("pause");
					break;
				}
			
			//pause until enter is pressed
			system("pause");
			}
	}