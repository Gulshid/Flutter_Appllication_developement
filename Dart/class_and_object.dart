import 'dart:io';

class A {
  void func() {
    print("***Class A ***");
    print("This is Class of dart language...");
  }

  void fun_2() {
    print("Enter the value for string....");
    String? name = stdin.readLineSync()!;
    print("Your Name in class A  is :$name");
    int x = 100;
    print("The value of x is $x");
  }
}

class B {
  void fun_2() {
    print("***Class B***");
    print("Enter the value for string....");
    String? Your_name = stdin.readLineSync()!;
    print("Your Name in class B:$Your_name");
    double x = 100.99;
    print("The value of x is $x");
  }
}

void main() {
  //Class A object
  A a1 = A();
  a1.func();
  a1.fun_2();

  //Class B object
  B b = B();
  b.fun_2();
}