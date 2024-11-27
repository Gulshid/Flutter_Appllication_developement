import 'dart:io';

void main() {
  //task14
  //Ask from user to enter the number and find sum of all the Even  number upto
  //that number:
  print("Enter the Number upto that number:");
  int that_number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int j = 0;
  while (j <= that_number) {
    if (j % 2 == 0) {
      sum += j;
     
    }
     j += 1;
  }
  print("The Sum of all Even number upto that Number is:$sum");
}
