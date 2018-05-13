#include <iostream>
#include <ctime>
#include <stdlib.h>

using namespace std;

int main()
{
int a, b, c, d, e, pb;

	srand(time(NULL));
	for(int i = 0; i < 5; i++)
	{
		a = rand() % 69 + 1;
		b = rand() % 69 + 1;
		c = rand() % 69 + 1;
		d = rand() % 69 + 1;
		e = rand() % 69 + 1;
		pb = rand() % 69 + 1;
		cout << "Numbers: " << a << " " << b << " " << c << " " << d << " " << e << " PB: " << pb << endl;
	}
	return 0;
}
