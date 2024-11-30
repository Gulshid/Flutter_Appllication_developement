//Ask from user to enter the table number  and  find that number
import 'dart:io';

void table() {
  print("Enter the table that you want:");
  int? tabl = int.parse(stdin.readLineSync()!);
  print("Enter the how time it take it:");
  int? count = int.parse(stdin.readLineSync()!);
  int i = 0;
  while (i <= count) {
    print("$tabl X $i = ${tabl * i}");
    i += 1;
  }
}

void main() {
  table();
}
