/*
Sean Coyne
GPA Calculator Extended
Assignment #5
CS244
*/
#include <iostream.h>
#include <stdlib.h>
#include <iomanip.h>
#include <fstream.h>

#define MaxClasses 6
#define honors 3.25
#define highhonors 3.6
#define MaxStudents 100

//prototype definitions
void input(void);
void verify(void);
void calc(void);
void starbar(void);
float sumFloatArray(float [], int size);
int sumIntArray(int [], int size);
void savetofile(void);

//globals
char StudentFName[MaxStudents][26];		//student First name
char StudentLName[MaxStudents][26];		//student Last name
float gpa1[MaxStudents];			//gpa of sem 1
float gpa2[MaxStudents];			//gpa of sem 2
float gpaYear[MaxStudents];			//gpa of year
int numstudents;				//number of students to run program for
int y;						//counter
//semester 1 variables
float grade1[MaxStudents][MaxClasses];		//sem 1 grades
int credits1[MaxStudents][MaxClasses];		//sem 1 credits
char CourseNum1[MaxStudents][MaxClasses][9];	//sem 1 course number
int numcourses1[MaxStudents];			//number of courses enrolled in for sem 1

//semester 2 variables		
float grade2[MaxStudents][MaxClasses];		//sem 2 grades
int credits2[MaxStudents][MaxClasses];		//sem 2 credits
char CourseNum2[MaxStudents][MaxClasses][9];	//sem 2 course number
int numcourses2[MaxStudents];			//number of courses enrolled in for sem 2

void main (void){
	char again;				//variable to get input for continuing program after run
	starbar();
	cout << "Welcome to the GPA Calculator." << endl
	     << "This program will calculate the GPA" << endl
	     << "of a student for each semester, and" << endl
	     << "the entire year, as well as determine" << endl
	     << "whether the student achieved Dean's list" << endl
	     << "or Dean's Honor List." << endl;
	starbar();
	system("pause");
		do{
		cout << "How many students would you like to input?(max. " << MaxStudents << ")";
		cin >> numstudents;
		}
		while(numstudents < 0 || numstudents > MaxStudents);
		for(y=0; y < numstudents; y++){
			input();
			verify();
			calc();
			savetofile();
		}
		cout << "Thank you for using this program." << endl;
		system("pause");
}

void input(void){
	int x;
	system("cls");
	cout << "Enter Student's First Name:(max. 25 chars) ";
	cin >> StudentFName[y], 26;
	cout << "Enter Student's Last Name:(max. 25 chars) ";
	cin >> StudentLName[y], 26;
	system("cls");
	
	//semester 1 input
	do{
		cout << "How many courses in Semester 1?(max. " << MaxClasses << ") ";
		cin >> numcourses1[y];
	}
	while(numcourses1[y] > MaxClasses || numcourses1[y] < 1);
	
	for (x=0; x<numcourses1[y]; x++){
		starbar();
		cout << "Course Number " << x+1 << endl;
		starbar();
		cout << endl << "Enter course number:(8 char.) ";
		cin >> CourseNum1[y][x];
		
		do{
			cout << endl << "Enter grade in course:(0.0 - 4.0) ";
			cin >> grade1[y][x];
		}
		while(grade1[y][x] > 4 || grade1[y][x] < 0);
		
		cout << endl << "Enter number of credits for course: ";
		cin >> credits1[y][x];
			
	}
	//semester 2 input
	system("cls");
	do{
		cout << "How many courses in Semester 2?(max. " << MaxClasses << ") ";
		cin >> numcourses2[y];
	}
	while(numcourses2[y] > MaxClasses || numcourses2[y] < 1);
	
	for (x=0; x<numcourses2[y]; x++){
		starbar();
		cout << "Course Number " << x+1 << endl;
		starbar();
		cout << endl << "Enter course number:(8 char.) ";
		cin >> CourseNum2[y][x];
		
		do{
			cout << endl << "Enter grade in course:(0.0 - 4.0) ";
			cin >> grade2[y][x];
		}
		while(grade2[y][x] > 4 || grade2[y][x] < 0);
		
		cout << endl << "Enter number of credits for course: ";
		cin >> credits2[y][x];
	}		
}

void verify(void){
	char valid = 0;				//used to find if all data is correct
	int x;
	int correct;				//used to find which element to correct
	cout.precision(2);
	cout.setf(ios::fixed | ios::showpoint);
	cout << endl << "   Number  Course Num       Grade       Credits";	
	//verify semester 1 data
	do{
		for (x=0; x<numcourses1[y]; x++){
			cout << endl 
			     << setw(7) << x+1 << "     "
			     << setw(7) << CourseNum1[y][x] << "     "
			     << setw(7) << grade1[y][x] << "     "
			     << setw(7) << credits1[y][x];
		}
	
		cout << endl << "Is this data correct for semester 1?(y/n) ";
		cin  >> valid;
		if (valid == 'n' || valid == 'N'){
			cout << "Type the number of course which needs to be corrected: ";
			cin >> correct;
			cout << endl << "Enter course number: ";
			cin >> CourseNum1[y][correct-1];
			
			do{
				cout << endl << "Enter grade in course: ";
				cin >> grade1[y][correct-1];
			}
			while(grade1[y][x] > 4 || grade1[y][x] < 0);
			
			cout << endl << "Enter number of credits for course: ";
			cin >> credits1[y][correct-1];
		}
	}
	while((valid == 'n') || (valid == 'N'));
	
	//reset variables
	correct = 0;
	valid = 0;
	cout << endl << "   Number  Course Num       Grade       Credits";
	//verify semester 2 data
	do{
		for (x=0; x<numcourses2[y]; x++){
			cout << endl 
			     << setw(7) << x+1 << "     "
			     << setw(7) << CourseNum2[y][x] << "     "
			     << setw(7) << grade2[y][x] << "     "
			     << setw(7) << credits2[y][x];
		}	
		cout << endl << "Is this data correct for semester 2?(y/n) ";
		cin  >> valid;
		if ((valid == 'n') || (valid == 'N')){
			cout << "Type the number of course which needs to be corrected: ";
			cin >> correct;
			cout << endl << "Enter course number: ";
			cin >> CourseNum2[y][correct-1];
			
			do{
				cout << endl << "Enter grade in course: ";
				cin >> grade2[y][correct-1];
			}
			while(grade2[y][x] > 4 || grade2[y][x] < 0);
			
			cout << endl << "Enter number of credits for course: ";
			cin >> credits2[y][correct-1];
		}
	}
	while((valid == 'n') || (valid == 'N'));
	
}
void calc(void){
	float QP1[MaxStudents][MaxClasses];		//list of quality points for sem 1
	float QP2[MaxStudents][MaxClasses];		//list of quality points for sem 2
	int x;
	float sumQPSem1[MaxStudents];			//sum of sem 1 qp 
	float sumQPSem2[MaxStudents];			//sum of sem 2 qp
	int sumCred1[MaxStudents];			//sum of sem 1 credits
	int sumCred2[MaxStudents];			//sum of sem 2 credits
		
	//calculate each semester's quality points
	for (x = 0; x < numcourses1[y]; x++){
		QP1[y][x] = grade1[y][x] * credits1[y][x];
	}
	for (x = 0; x < numcourses2[y]; x++){
		QP2[y][x] = grade2[y][x] * credits2[y][x];
	}
	//get sums of the arrays
	sumQPSem1[y] = sumFloatArray(QP1[y], numcourses1[y]);
	sumQPSem2[y] = sumFloatArray(QP2[y], numcourses2[y]);
	sumCred1[y] = sumIntArray(credits1[y], numcourses1[y]);
	sumCred2[y] = sumIntArray(credits2[y], numcourses2[y]);
	//calculate gpas
	gpa1[y] = sumQPSem1[y]/sumCred1[y];
	gpa2[y] = sumQPSem2[y]/sumCred2[y];
	gpaYear[y] = (sumQPSem1[y]+sumQPSem2[y])/(sumCred1[y]+sumCred2[y]);
	
	system("cls");
	starbar();
	cout.precision(2);
	cout.setf(ios::fixed | ios::showpoint);
	cout << StudentFName[y] << " " << StudentLName[y] << endl
	     << "Semester 1 Credits: " << sumCred1[y] << endl
	     << "Semester 2 Credits: " << sumCred2[y] << endl
	     << "Total Credits:      " << sumCred1[y]+sumCred2[y] << endl
	     << "Semester 1 GPA:     " << gpa1[y] << endl
	     << "Semester 2 GPA:     " << gpa2[y] << endl
	     << "Year GPA:           " << gpaYear[y] << endl;
	if (gpa1[y] > highhonors){
		cout << "Semester 1 - Achieved Dean's Honor List" << endl;
	}
	else if (gpa1[y] >= honors && gpa1[y] < highhonors){
		cout << "Semester 1 - Achieved Dean's List" << endl;
	}
	if (gpa2[y] > highhonors){
		cout << "Semester 2 - Achieved Dean's Honor List" << endl;
	}
	else if (gpa2[y] >= honors && gpa2[y] < highhonors){
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
void savetofile(void){
	int x;
	//saves raw data to file
	fstream studentinfo;
	//open file
	studentinfo.open("studentinfo.txt", ios::app);
	//check for errors
	if (studentinfo.fail())
		{
		cout << "ERROR" << endl;
	}
	//write data to file
	studentinfo << StudentFName[y] << endl
		    << StudentLName[y] << endl;
	for (x = 0; x < numcourses1[y]; x++){
		studentinfo << CourseNum1[y][x] << endl
			    << grade1[y][x] << endl
			    << credits1[y][x] << endl;
	}
	for (x = 0; x < numcourses2[y]; x++){
		studentinfo << CourseNum2[y][x] << endl
			    << grade2[y][x] << endl
			    << credits2[y][x] << endl;
	}
	studentinfo << gpa1[y] << endl
		    << gpa2[y] << endl
		    << gpaYear[y] << endl << endl;
	//close file
	studentinfo.close();
}