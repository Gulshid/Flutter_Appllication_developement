import 'dart:io';

class Base {
  void function() {
    int a;
    int b;
    print("Enter the value for a:");
    a = int.parse(stdin.readLineSync()!);
    print("Enter the value for b:");
    b = int.parse(stdin.readLineSync()!);
    int? x = a * b;
    print("The multiplication of two value is :$x");
  }
}

class Derived extends Base {
  void function_2() {
    int a;
    int b;
    print("Enter the value for a:");
    a = int.parse(stdin.readLineSync()!);
    print("Enter the value for b:");
    b = int.parse(stdin.readLineSync()!);
    int? x = a + b;
    print("The addition two value is :$x");
  }
}

void main() {
  var ob2 = Derived();
  ob2.function();
  ob2.function_2();
}
