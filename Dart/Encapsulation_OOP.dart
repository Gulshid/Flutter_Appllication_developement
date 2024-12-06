class Student {
  String _name = "";//These two are private(-)sign denote used as a private variable
  int _age = 0;      

  void fun(String name, int age) {
    _name = name;
    _age = age;
    print("Your name is :$_name");
    print("Your age is :$_age");
  }
}

void main() {
  Student s = Student();
  s.fun("Gulshid Zada", 22);
}
