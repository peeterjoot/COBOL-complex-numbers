#include <iostream>
#include <complex>

using complex = std::complex<double>;

int main()
{
   complex a{1,2};
   complex b{3,4};
   complex c = a * b;
   std::cout << "c = " << c << "\n";

   return 0;
}
