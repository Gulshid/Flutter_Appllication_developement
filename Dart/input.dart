import 'dart:io';

void main() {
  print("User time input:-");
  print("Enter Your Name:");
  String? name = stdin.readLineSync();
  print("Enter Your age:");
  int? age = int.parse(stdin.readLineSync()!);
  print("Enter your Marks:");
  double? marks = double.parse(stdin.readLineSync()!);
  print("Your Name is $name");
  print("Your age is $age");
  print("Your Marks is $marks");
}
