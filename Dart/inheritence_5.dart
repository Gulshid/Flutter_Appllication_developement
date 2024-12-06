//Inheritence with constructor
class Animal {
  Animal() {
    print("This is Animal which is Eating...");
  }
}

class Dog extends Animal {
  Dog() {
    print("This is Dog and it is Barking...");
    print("*****************");
  }
}

class Cat extends Animal {
  Cat() {
    print("This is Cat and it is meoing...");
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();
  print("$dog");
  print("$cat");
}
