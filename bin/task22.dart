import 'dart:io';

void main() {
  //task22
  //write a program that user enter multiple value and then sum of those number
  print("How many numbers do you want to enter?");
  int ?count = int.parse(stdin.readLineSync()!); 

  int sum = 0; 

  for (int i = 1; i <= count; i++) {
    print("Enter number $i:");
    int? number = int.parse(stdin.readLineSync()!);
    sum += number; 
  }

  print("The sum of all the numbers is: $sum");
}
