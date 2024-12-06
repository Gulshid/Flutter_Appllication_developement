import 'dart:io';

class A {
  void hello() {
    print("Enter the value for floating value:");
    double? x = double.parse(stdin.readLineSync()!);
    print("The value for x in floating value is :$x");
  }
}

class B extends A {
  void world() {
    print("Enter Your name:");
    String? name = stdin.readLineSync()!;
    print("Your Name is :$name");
  }
}

void main() {
//create a object
  B b = B();
  b.world();
  b.hello();
}
