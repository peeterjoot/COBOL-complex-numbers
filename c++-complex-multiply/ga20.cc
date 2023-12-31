#include <iostream>
#include <complex>

using complex = std::complex<double>;

#if 1
struct ga20{
   complex g02;
   complex g1;
};
#else
struct ga20 {
   int grade{};
   union {
      complex g02{};
      struct {
         double sc{};
         double ps{};
      };
   };
   union {
      complex g1{};
      struct {
         double x{};
         double y{};
      };
   };
};
#endif

ga20 a;
ga20 b;

int main()
{
   return 0;
}
