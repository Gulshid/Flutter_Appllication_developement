import 'dart:io';

void main() {
  // Ask from user to enter the number and find the sum of that number
  print("Enter the number to sum form that number:-");
  int? number_that = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 0; i <= number_that; i++) {
    sum = sum + i;
  }
  print("The Sum from 1 to That Number is $sum");
  print("************************");

  //Ask form user to find the sum of Even number upto that number
  print("Enter the number to find the sum of Even number upto that number");
  int sum_1 = 0;
  int? number_that_1 = int.parse(stdin.readLineSync()!);
  for (int j = 0; j <= number_that_1; j++) {
    if (j % 2 == 0) {
      sum_1 = sum_1 + j;
    }
  }
  print("The Sum of Even number upto that number is:$sum_1");
  print("************************");

   //Ask form user to find the sum of Odd number upto that number
  print("Enter the number to find the sum of Odd number upto that number");
  int sum_2 = 0;
  int? number_that_2 = int.parse(stdin.readLineSync()!);
  for (int O = 0; O <= number_that_2; O++) {
    if (O% 2 == 1) {
      sum_2 = sum_2 + O;
    }
  }
  print("The Sum of Even number upto that number is:$sum_2");
  print("************************");


}
