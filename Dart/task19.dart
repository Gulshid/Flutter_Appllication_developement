import 'dart:io';

void main() {
  //task19
  //write a program that calculate the sum of natural number
  int natural_sum = 0;
  for (int s = 1; s <= 9; s += 1) {
    natural_sum += s;
  }
  print("The Sum of first natural number is:$natural_sum");
  print("**************");

  //task
  //write a program for table
  print("Enter the table that you want...");
  int? num_table = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    int table_mul = num_table * i;
    print("$num_table x $i = $table_mul");
  }
}
