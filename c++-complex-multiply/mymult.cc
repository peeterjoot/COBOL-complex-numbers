#include <iostream>

struct complex{
   double re_;
   double im_;
};

complex mult(const complex & a, const complex & b) {
   // (a + b i)(c + d i) = a c - b d + i( b c + a d) 
   return complex{ a.re_ * b.re_ - a.im_ * b.im_,
                   a.im_ * b.re_ + a.re_ * b.im_ };
}

int main()
{
   complex a{1,2};
   complex b{3,4};
   complex c = mult(a, b);
   std::cout << "c = " << c.re_ << " +(" << c.im_ << ") I\n";

   return 0;
}
