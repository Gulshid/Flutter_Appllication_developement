//Write a Program to find the Even or Odd of Number 
import 'dart:io';

void main() {
  print("Enter the Number to check whether it Even or Odd:-");
  int? num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print("The number that you are entered is Even");
  } else if (num % 2 == 1) {
    print("The number that you are entered is Odd");
  }
}
