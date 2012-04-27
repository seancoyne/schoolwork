/*
Sean Coyne
GPA Calculator
Assignment #4
CS244
*/
#include <iostream.h>
#include <stdlib.h>
#include <iomanip.h>

#define max 6
#define honors 3.25
#define highhonors 3.6

//prototype definitions
void input(void);
void verify(void);
void calc(void);
void starbar(void);
float sumFloatArray(float [], int size);
int sumIntArray(int [], int size);

//globals
char StudentName[26];		//student name
//semester 1 variables
float grade1[max];		//sem 1 grades
int credits1[max];		//sem 1 credits
char CourseNum1[max][9];	//sem 1 course number
int numcourses1;		//number of courses enrolled in for sem 1
//semester 2 variables		
float grade2[max];		//sem 2 grades
int credits2[max];		//sem 2 credits
char CourseNum2[max][9];	//sem 2 course number
int numcourses2;		//number of courses enrolled in for sem 2

void main (void){
	//char again;		//variable to get input for continuing program after run
	starbar();
	cout << "Welcome to the GPA Calculator." << endl
	     << "This program will calculate the GPA" << endl
	     << "of a student for each semester, and" << endl
	     << "the entire year, as well as determine" << endl
	     << "whether the student achieved Dean's list" << endl
	     << "or Dean's Honor List." << endl;
	starbar();
	system("pause");
		
	//do{
		input();
		verify();
		calc();
		cout << "Thank you for using this program." << endl;
		system("pause");
		//cout << "Calculate for another student?(y/n) ";
		//cin >> again;
	//}
	//while((again == 'y') || (again == 'Y'));
	
}

void input(void){
	int x;
	system("cls");
	cout << "Enter Student's Name:(max. 25 chars) ";
	cin.getline(StudentName, 26);
	system("cls");
	
	//semester 1 input
	do{
		cout << "How many courses in Semester 1?(max. " << max << ") ";
		cin >> numcourses1;
	}
	while(numcourses1 > max || numcourses1 < 1);
	
	for (x=0; x<numcourses1; x++){
		starbar();
		cout << "Course Number " << x+1 << endl;
		starbar();
		cout << endl << "Enter course number:(8 char.) ";
		cin >> CourseNum1[x];
		
		do{
			cout << endl << "Enter grade in course:(0.0 - 4.0) ";
			cin >> grade1[x];
		}
		while(grade1[x] > 4 || grade1[x] < 0);
		
		cout << endl << "Enter number of credits for course: ";
		cin >> credits1[x];
			
	}
	//semester 2 input
	system("cls");
	do{
		cout << "How many courses in Semester 2?(max. " << max << ") ";
		cin >> numcourses2;
	}
	while(numcourses2 > max || numcourses2 < 1);
	
	for (x=0; x<numcourses2; x++){
		starbar();
		cout << "Course Number " << x+1 << endl;
		starbar();
		cout << endl << "Enter course number:(8 char.) ";
		cin >> CourseNum2[x];
		
		do{
			cout << endl << "Enter grade in course:(0.0 - 4.0) ";
			cin >> grade2[x];
		}
		while(grade2[x] > 4 || grade2[x] < 0);
		
		cout << endl << "Enter number of credits for course: ";
		cin >> credits2[x];
	}		
}

void verify(void){
	char valid = 0;		//used to find if all data is correct
	int x;
	int correct;		//used to find which element to correct
	cout.precision(2);
	cout.setf(ios::fixed | ios::showpoint);
	cout << endl << "   Number  Course Num       Grade       Credits";	
	//verify semester 1 data
	do{
		for (x=0; x<numcourses1; x++){
			cout << endl 
			     << setw(7) << x+1 << "     "
			     << setw(7) << CourseNum1[x] << "     "
			     << setw(7) << grade1[x] << "     "
			     << setw(7) << credits1[x];
		}
	
		cout << endl << "Is this data correct for semester 1?(y/n) ";
		cin  >> valid;
		if (valid == 'n' || valid == 'N'){
			cout << "Type the number of course which needs to be corrected: ";
			cin >> correct;
			cout << endl << "Enter course number: ";
			cin >> CourseNum1[correct-1];
			
			do{
				cout << endl << "Enter grade in course: ";
				cin >> grade1[correct-1];
			}
			while(grade1[x] > 4 || grade1[x] < 0);
			
			cout << endl << "Enter number of credits for course: ";
			cin >> credits1[correct-1];
		}
	}
	while((valid == 'n') || (valid == 'N'));
	
	//reset variables
	correct = 0;
	valid = 0;
	cout << endl << "   Number  Course Num       Grade       Credits";
	//verify semester 2 data
	do{
		for (x=0; x<numcourses2; x++){
			cout << endl 
			     << setw(7) << x+1 << "     "
			     << setw(7) << CourseNum2[x] << "     "
			     << setw(7) << grade2[x] << "     "
			     << setw(7) << credits2[x];
		}	
		cout << endl << "Is this data correct for semester 2?(y/n) ";
		cin  >> valid;
		if ((valid == 'n') || (valid == 'N')){
			cout << "Type the number of course which needs to be corrected: ";
			cin >> correct;
			cout << endl << "Enter course number: ";
			cin >> CourseNum2[correct-1];
			
			do{
				cout << endl << "Enter grade in course: ";
				cin >> grade2[correct-1];
			}
			while(grade2[x] > 4 || grade2[x] < 0);
			
			cout << endl << "Enter number of credits for course: ";
			cin >> credits2[correct-1];
		}
	}
	while((valid == 'n') || (valid == 'N'));
	
}
void calc(void){
	float QP1[max];		//list of quality points for sem 1
	float QP2[max];		//list of quality points for sem 2
	int x;
	float sumQPSem1;	//sum of sem 1 qp 
	float sumQPSem2;	//sum of sem 2 qp
	int sumCred1;		//sum of sem 1 credits
	int sumCred2;		//sum of sem 2 credits
	float gpa1;		//gpa of sem 1
	float gpa2;		//gpa of sem 2
	float gpaYear;		//gpa of year
	
	//calculate each semester's quality points
	for (x = 0; x < numcourses1; x++){
		QP1[x] = grade1[x] * credits1[x];
	}
	for (x = 0; x < numcourses2; x++){
		QP2[x] = grade2[x] * credits2[x];
	}
	//get sums of the arrays
	sumQPSem1 = sumFloatArray(QP1, numcourses1);
	sumQPSem2 = sumFloatArray(QP2, numcourses2);
	sumCred1 = sumIntArray(credits1, numcourses1);
	sumCred2 = sumIntArray(credits2, numcourses2);
	//calculate gpas
	gpa1 = sumQPSem1/sumCred1;
	gpa2 = sumQPSem2/sumCred2;
	gpaYear = (sumQPSem1+sumQPSem2)/(sumCred1+sumCred2);
	
	system("cls");
	starbar();
	cout.precision(2);
	cout.setf(ios::fixed | ios::showpoint);
	cout << StudentName << endl
	     << "Semester 1 Credits: " << sumCred1 << endl
	     << "Semester 2 Credits: " << sumCred2 << endl
	     << "Total Credits:      " << sumCred1+sumCred2 << endl
	     << "Semester 1 GPA:     " << gpa1 << endl
	     << "Semester 2 GPA:     " << gpa2 << endl
	     << "Year GPA:           " << gpaYear << endl;
	if (gpa1 > highhonors){
		cout << "Semester 1 - Achieved Dean's Honor List" << endl;
	}
	else if (gpa1 >= honors && gpa1 < highhonors){
		cout << "Semester 1 - Achieved Dean's List" << endl;
	}
	if (gpa2 > highhonors){
		cout << "Semester 2 - Achieved Dean's Honor List" << endl;
	}
	else if (gpa2 >= honors && gpa2 < highhonors){
		cout << "Semester 2 - Achieved Dean's List" << endl;
	}
	starbar();
	
	system("pause");	
}

float sumFloatArray(float array[], int size){
	//calcs the sum of all elements of a float array
	float sum = 0;
	int x;
	for (x = 0; x < size; x++){
		sum += array[x];
	} 
	return sum;
}
int sumIntArray(int array[], int size){
	//calcs the sum of all elements of a int array
	int sum = 0;
	int x;
	for (x = 0; x < size; x++){
		sum += array[x];
	} 
	return sum;
}

void starbar(void){
	//prints 50 stars in a line
	int x;
	for (x = 1; x < 50; x++){
		cout << "*";
	}
	cout << endl;
}
