import 'dart:io';

//Encapsulation using with Inheritence
class Math {
  int _value_1 = 0;
  int _value_2 = 0;
  int _add_value = 0;

  Math() {
    int value_3, value_4, value_add;
    print("Enter the value for two varible :");
    value_3 = int.parse(stdin.readLineSync()!);
    value_4 = int.parse(stdin.readLineSync()!);
    value_add = value_3 + value_4;
    _value_1 = value_3;
    _value_2 = value_4;
    _add_value = value_add;

    print("The value of first variable is :$_value_1");
    print("The value of 2nd variable is :$_value_2");
    print('The addition of these two variable is :$_add_value');
  }
}

class Cmath extends Math {
  int _var_1 = 0;
  int _var_2 = 0;
  int _sub_value = 0;

  Cmath() {
    int var_3, var_4, var_sub;
    print("Enter the value for two vraible :");
    var_3 = int.parse(stdin.readLineSync()!);
    var_4 = int.parse(stdin.readLineSync()!);
    var_sub = var_3 - var_4;
    _var_1 = var_3;
    _var_2 = var_4;
    _sub_value = var_sub;

    print("The value of first variable is :$_var_1");
    print("The value of 2nd variable is :$_var_2");
    print('The addition of these two variable is :$_sub_value');
  }
}

void main() {
  Cmath math = Cmath();
  print("The Two class is Displaying ... $math");

}
