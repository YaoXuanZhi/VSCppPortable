#include <iostream>
#include <stdio.h>
using namespace std;

#define PrintResult(numType1, numType2, actionType, calcProgress) \
printf("%s %s %s    ", #numType1, #numType2, #actionType); \
cout << (calcProgress) << endl; 

int main()
{
	PrintResult(����, ����, ����, (10 / 11));
	PrintResult(����, ����, ������, (10 / 11.0));
	PrintResult(������, ����, ����, (10.0 / 11));
	PrintResult(����, ����, ����, (10 * 11));
	PrintResult(����, ����, ������, (10 / 11.0));
	PrintResult(������, ����, ����, (10.0 * 11));
	getchar();
    return 0;
}
