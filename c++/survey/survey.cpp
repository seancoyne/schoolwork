/*
Sean Coyne
CS245
Assignment #2
Survey
*/

#include <iostream.h>
#include <stdlib.h>
#include <fstream.h>
#include <string.h>

#define max 100		//max number of survey respondants

//structs
struct response_type{
	char sex;
	char state[3];
	int age;
	char major[3];
};
struct freq_type{
	int freq;
	char name[3];
};

//prototype definitions
response_type askQuestions(void);
void report(response_type [], int);
int menu(void);

void main(void){
	int menuchoice;					//menu choice
	response_type responses[max];			//responses
	int nextavail = 0;				//next available space for a response
	
	//read in data file
	fstream datafile;				//create file object for read only
	datafile.open("surveydata.dat", ios::in);	//open file for read only
	for (int x = 0;!datafile.eof(); x++){
		datafile >> responses[x].sex;
		if (datafile.eof()) break;		//eof in for() doesn't return true after the last value has been read, 
		datafile >> responses[x].state;		//but it will return true here if this record doesn't really exist.
		datafile >> responses[x].age;
		datafile >> responses[x].major;
		nextavail++;
	}
	datafile.close();
	
	//go to menu choice
	do{
	menuchoice = menu();
		switch (menuchoice){
			case 1:
				if (nextavail < max){
					//get responses
					responses[nextavail] = askQuestions();
					//output to file
					datafile.open("surveydata.dat",ios::app);
					datafile << responses[nextavail].sex << endl;
					datafile << responses[nextavail].state << endl;
					datafile << responses[nextavail].age << endl;
					datafile << responses[nextavail].major << endl;
					datafile.close();
					//increase next avail
					nextavail++;
				}
				else{
					cout << "Max number of responses has already been reached." << endl;
				}
				break;
			case 2:
				report(responses,nextavail);
				break;
			case 3:
				cout << endl <<  "Thank you for taking this survey." << endl;
				system("pause");
				break;
			default:
				break;
		}
	}while(menuchoice !=3);
//exit program
}

response_type askQuestions(void){
//ask questions and return responses
	response_type answers;		//responses
	int invalid = 0;		//invalid response flag
	system("cls");
	
	//question 1
	do{
		cout << endl << "What is your gender?(M/F) ";
		cin >> answers.sex;
		switch (answers.sex){
			case 'm':
			case 'M':
				answers.sex = 'M';
				invalid = 0;
				break;
			case 'f':
			case 'F':
				answers.sex = 'F';
				invalid = 0;
				break;
			default:
				invalid = 1;
				break;
		}
	}while(invalid == 1);
		
	//question 2
	cout << endl << "What is your home state?(2 letter abrv. in caps i.e. CT = Connecticut) ";
	cin >> answers.state;
	
	//question 3
	cout << endl << "What is your age? ";
	cin >> answers.age;
	
	//question 4
	cout << endl << "What is your major?(2 letter abrv. in caps i.e. CS = Computer Science) ";
	cin >> answers.major;
	
	return answers;			
}

int menu(void){
//menu	
	int menuchoice;		//menu choice

	do{
		system("cls");
		cout << "S U R V E Y" << endl
		     << endl
		     << "1. Answer questions" << endl
		     << "2. View Results of data collected so far" << endl
		     << "3. Exit" << endl
		     << "What would you like to do? ";
		cin >> menuchoice;
	}while(menuchoice < 1 || menuchoice > 3);	
	return menuchoice;
}

void report(response_type responses[], int nextavail){
//show results of data collected so far
	int totalresponses, nummales = 0, numfemales, youngestAge = 999, oldestAge = 000;
	freq_type majors[max];	//creates array to hold majors and frequencies
	freq_type states[max];	//creates array to hold states and frequencies
	int majorend = 0;	//end marker for majors array
	int stateend = 0;	//end marker for states array
	bool foundFlag = false;
	fstream datafile;
	
	//find total responses
	totalresponses = nextavail;
		
	//find number of males
	for(int x = 0; x < nextavail; x++){
		if (responses[x].sex == 'M'){
			nummales = nummales + 1;
		}
	}
	//find number of females
	numfemales = totalresponses - nummales;

	//find youngest
	for(int y = 0; y < nextavail; y++){
		if (responses[y].age < youngestAge){
			youngestAge = responses[y].age;
		}
	}
	//find oldest
	for(y = 0; y < nextavail; y++){
		if (responses[y].age > oldestAge){
			oldestAge = responses[y].age;
		}
	}
	//find majors and frequencies
	for(int z = 0; z < nextavail; z++){
		foundFlag = false;
		for(int a = 0; a < majorend; a++){
			if (! /*strcmp returns 0 if =, so you need the !*/ strcmp(responses[z].major, majors[a].name)){
				majors[a].freq++;
				foundFlag = true;
				break;
			}
		}
		if (!foundFlag){
			strcpy(majors[majorend].name, responses[z].major);
			majors[majorend].freq = 1;
			majorend++;
		}
	}
	//find states and frequencies
	for(z = 0; z < nextavail; z++){
		foundFlag = false;
		for(int a = 0; a < stateend; a++){
			if (! /*strcmp returns 0 if =, so you need the !*/ strcmp(responses[z].state, states[a].name)){
				states[a].freq++;
				foundFlag = true;
				break;
			}
		}
		if (!foundFlag){
			strcpy(states[stateend].name, responses[z].state);
			states[stateend].freq = 1;
			stateend++;
		}
	}

	//output results
	system("cls");
	datafile.open("surveyresults.dat", ios::out);
	cout << "   R E S U L T S    " << endl;
	cout << "Total Responses:    " << totalresponses << endl;
	datafile << "Total Responses:    " << totalresponses << endl;
	cout << "Males:              " << nummales << endl;
	datafile << "Males:              " << nummales << endl;
	cout << "Females:            " << numfemales << endl;
	datafile << "Females:            " << numfemales << endl;
	cout << "Youngest Age:       " << youngestAge << endl;
	datafile << "Youngest Age:       " << youngestAge << endl;
	cout << "Oldest Age:         " << oldestAge <<endl;
	datafile << "Oldest Age:         " << oldestAge << endl;
	cout << "*************************" << endl;
	datafile << "*************************" << endl;
	cout << "Major        Freq   " << endl;
	datafile << "Major        Freq   " << endl;
	for(int f = 0; f < majorend; f++){
		cout << majors[f].name << "           " << majors[f].freq << endl;
		datafile << majors[f].name << "           " << majors[f].freq << endl;
	}
	cout << "*************************" << endl;
	datafile << "*************************" << endl;
	cout << "State        Freq   " << endl;	
	datafile << "State        Freq   " << endl;
	
	for(f = 0; f < stateend; f++){
		cout << states[f].name << "           " << states[f].freq << endl;
		datafile << states[f].name << "           " << states[f].freq << endl;
	}
	datafile.close();
	cout << "Results Saved As: surveyresults.dat" << endl << endl;
	system("pause");

}





