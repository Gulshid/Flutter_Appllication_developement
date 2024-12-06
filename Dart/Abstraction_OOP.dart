//if we create an abstract class and their function then we must use these function in
//derived class
abstract class A {
  void testing();
}

class B extends A {
  @override
  void testing() {
    print("This is Testing...");
  }
}

void main() {
  var b = B();
  b.testing();
}
