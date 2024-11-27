//Write a Program to find the positive ,Negative,Zero of a number
import 'dart:io';

void main() {
  print("Enter the Number to check whether it's positive ,Negative or Zero");
  int? num = int.parse(stdin.readLineSync()!);
  if (num > 0) {
    print("The Number $num is Positive");
  } else if (num < 0) {
    print("The Num $num is Negative");
  } else if (num == 0) {
    print("The Number $num is Equal to Zero");
  }
}
