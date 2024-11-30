//Ask from user to enter two vraible value and then multilpy
import 'dart:io';

void multiply(int value_1, int value_2) {
  int mult = value_1 * value_2;
  print("The Multiplication of two value is :$mult");
}

void main() {
  int value_1, value_2;
  print("Enter the two value two multiply:");
  value_1 = int.parse(stdin.readLineSync()!);
  value_2 = int.parse(stdin.readLineSync()!);
  multiply(value_1, value_2);
}
