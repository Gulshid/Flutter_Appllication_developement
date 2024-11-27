import 'dart:io';

void main() {
  int? value = int.parse(stdin.readLineSync()!);
  value == 2 ? print("value is two") : print("The value is another");
  print("The value is :$value");
}
