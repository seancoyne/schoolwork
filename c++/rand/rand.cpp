/*
Sean Coyne
Assignment 2
Rock Paper Scissors
CS244
*/
#include <iostream.h>
#include <stdlib.h>
#include <time.h>
void sleep( clock_t wait );

int main()
{
    int x;
    int random_integer;
    
    for (x=0; x<30; x++)
    {
    		srand((unsigned) time(NULL));
    		random_integer = (rand() % 9);
    		cout << "Number " << x << " is " << random_integer << " next will generate in one second" << endl;
		sleep(1000);
    		//cin.get();
    }
    system("pause");
    return 0;
}
/* Pauses for a specified number of milliseconds. */
void sleep( clock_t wait )
{
   clock_t goal;
   goal = wait + clock();
   while( goal > clock() )
      ;
} 