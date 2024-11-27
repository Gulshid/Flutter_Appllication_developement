import 'dart:io';

void main() {
  //task13
  //Ask from user to enter the number and find su of all number upto that number
  print("Enter the number to sum for that Number:");
  int sum = 0;
  int that_number = int.parse(stdin.readLineSync()!);
  int j = 0;
  while (j <= that_number) {
    sum = sum + j;
    j++;
  }
  print("The sum of number form that Number:$sum");
}
