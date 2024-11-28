import 'dart:io';

void main() {
  print("Enter the positive number:");
  int? n = int.parse(stdin.readLineSync()!);
  List<int> userlist = [];
  print("Enter $n");
  int sum = 0;
  for (int i = 0; i < n; i++) {
    int? element = int.parse(stdin.readLineSync()!);
    userlist.add(element);
    sum = sum + element;
  }
  print("The sum ia :$sum");
}
