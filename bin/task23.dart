import 'dart:io';

void main() {
  //task23
  //write a program to user enter a positive integer to find whether even or odd
  print("Enter the positive integer:");
  int? num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print("The Number $num is Even NUmber...");
  } else if (num % 2 == 1) {
    print("the Number $num is Odd Number...");
  }
}
