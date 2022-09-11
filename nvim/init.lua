// program to convert from celsius to fahrenheit - aka to help americans
#include <cstdio>
#include <cstdlib>
#include <iostream>

int main(int nNumberofArgs, char* pszArgs[])
{
	// inserts the temp. in celsius
	int celsius;
	std::cout << "Enter the temperature in Celsius: ";
	std::cin >> celsius ;
	// calculates the factor of conversion from celsius to fahrenheit 
	int factor = 180;
	// converts to fahrenheit
	int fahrenheit;
	fahrenheit = factor * celsius/100 + 32;
	// displays the results
	std::cout << "Fahrenheit value is: ";
	std::cout << fahrenheit << std::endl;
	// closes the program and yada yada
	std::cout << "Press ENTER to continue..." << std::endl;
	std::cin.ignore(10, '\n');
	std::cin.get();
	return 0;
}

