#include <iostream>
#include <fstream>
#include <string>

using namespace std;

struct lab1				//Structure to read individual elements from all rows from the file
{

	string regist;
	string frstname;
	string sndname;
	string program;
	float CGPA;
	string cont;

};

int main()
{

	lab1 Student[10];			//Instance creation and the size of array declared
	//Student[0].regist;

	ifstream Filename;
	int i = 0;				// for loop counter
	Filename.open("Filename.txt", ios::in);
	if (!Filename)
	{
		cout << "File not exists! ";
	}
	else
	{
		string roll;
		cout << "Enter roll number! ";
		cin >> roll;
		while (!Filename.eof()) // whole file read
		{
			Filename >> Student[i].regist >> Student[i].frstname >> Student[i].sndname >> Student[i].program >> Student[i].CGPA >> Student[i].cont;		//Data read from file
			
			if (Student[i].regist==roll) // condition to print data of file of only one roll number
			cout << Student[i].regist << " " << Student[i].frstname << " " << Student[i].sndname << " " << Student[i].program << " " << Student[i].CGPA << " " << Student[i].cont << " " << endl;  //data output from file

			i++;
		}
	}

	system("pause");
	return 0;

}


