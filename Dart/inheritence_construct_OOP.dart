class Base {
  Base() {
    print("This is constructor function of class to inherit in derived class");
    int x = 10;
    int y = 20;
    print("The value of x is $x and y is $y");
  }
}

class Derived extends Base {
  Derived() {
    print("This is constructor function of class to Access Base");
    double a = 2.2;
    double b = 3.1;
    print("The value of a is $a and b is $b");
  }
}

void main() {
  Derived obj = Derived();
  print(obj);
}
