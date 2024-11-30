import 'dart:io';

void sum(int x, int y) {
  int sum = x + y;
  print("the sum of two value is $sum");
}

int add(int a, int b) {
  return a + b;
}

void main() {
  sum(2, 3);
  int a, b;
  print("Enter the value for a and b:");
  a = int.parse(stdin.readLineSync()!);
  b = int.parse(stdin.readLineSync()!);
  int s = add(a, b);
  print("The addition of two value is $s");
}
