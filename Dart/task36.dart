//Ask from user to sum of two number
import 'dart:io';

void sum(int num_1, int num_2) {
  int add = num_1 + num_2;
  print("The sum of two value is :$add");
}

void main() {
  int num_1, num_2;
  print("Enter the value for num_1 and num_2:");
  num_1 = int.parse(stdin.readLineSync()!);
  num_2 = int.parse(stdin.readLineSync()!);
  sum(num_1, num_2);
}
