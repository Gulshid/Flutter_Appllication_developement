import 'dart:io';

void main() {
  //task20
  //find the factorial of number
  print("Enter the Number to find the factorail");
  int? fact = int.parse(stdin.readLineSync()!); 
  int res_fact = 1;

  for (int i = 1; i <= fact; i++) {
    res_fact = res_fact * i;
  }

  print("Factorial of $fact is $res_fact");
}
