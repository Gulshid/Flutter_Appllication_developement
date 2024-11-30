//Ask from user to find the number of even or odd
import 'dart:io';

void Even_odd(int number) {
  if (number % 2 == 0) {
    print("The number $number is Even...");
  } else if (number % 2 == 1) {
    print("The number $number is Odd...");
  }
}

void main() {
  print("Enter the number to check the number whether it's Even or Odd...");
  int? number = int.parse(stdin.readLineSync()!);
  Even_odd(number);
}
