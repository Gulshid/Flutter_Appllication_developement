import 'dart:io';

class A {
  int _a = 0;
  double _b = 0.0;
  void number() {
    int x;
    double y;
    print("Enter the value for x and y:");
    x = int.parse(stdin.readLineSync()!);
    y = double.parse(stdin.readLineSync()!);
    _a = x;
    _b = y;
    print("The value of x is $_a and y is $_b");
  }
}

void main() {
  A a = A();
  a.number();
}
