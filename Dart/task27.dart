import 'dart:io';

void main() {
  print("Enter the positive integer:");
  int? num = int.parse(stdin.readLineSync()!);
  List<int> userlist = [];
  print("Enter the $num:");
  for (int i = 0; i < num; i++) {
    int element = int.parse(stdin.readLineSync()!);
    userlist.add(element);
  }
  print("The number is :$userlist");
}
