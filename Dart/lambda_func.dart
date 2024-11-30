import 'dart:io';

void fun() => print("Hello! This is lambda function");

void fun_2(int x, int y) => print(x + y);
void main() {
  //call the lamda function
  fun();
  int x, y;
  print("Enter the value for x and y :");
  x = int.parse(stdin.readLineSync()!);
  y = int.parse(stdin.readLineSync()!);
  print("the addition of two varaible is :");
  fun_2(x, y);
}
