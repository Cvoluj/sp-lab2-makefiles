#include <iostream>
#include "calculator.h"
#include <windows.h>

int main() {
    Calculator calc;
    double a = 4.0, b = 3.0;

    std::cout << "Addition of " << a << " and " << b << " = " << calc.Add(a, b) << std::endl;
    std::cout << "Subtraction of " << a << " and " << b << " = " << calc.Sub(a, b) << std::endl;
    Sleep(5000);
    return 0;
}
