import 'dart:io';

void main() {
  print("Enter the value for Number to check whether its _+ive or _-ive");
  int? number = int.parse(stdin.readLineSync()!);
  String positive_or_negative = (number >= 0) ? "positive" : "Negative";
  print("The Number $number is $positive_or_negative");
}
