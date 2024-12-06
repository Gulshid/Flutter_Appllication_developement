//Normal class Inheritence 
class Animal {
  void animal() {
    print("This is Animal which is Eating...");
  }
}

class Dog extends Animal {
  void dog() {
    print("This is Dog and it is Barking...");
     print("*****************");
  }
}

class Cat extends Animal {
  void cat() {
   
    print("This is Cat and it is meoing...");
  }
}

void main() {
  Dog f = Dog();
  Cat c = Cat();
  f.animal();
  f.dog();

  c.animal();
  c.cat();
}
