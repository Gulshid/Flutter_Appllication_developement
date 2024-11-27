import 'dart:io';

void main() {
  //task15
  //Ask from user to enter the number and find sum of all the Odd  number upto
  //that number:
  print("Enter the Number upto that number:");
  int that_number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int k = 0;
  while (k <= that_number) {
    if (k % 2 == 1) {
      sum = sum + k;
    }
    k = k + 1;
  }
  print("The sum of all Odd number upto that number:$sum");
}
