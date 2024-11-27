import 'dart:io';

void main() {
  print("Enter Your Age:-");
  int? age = int.parse(stdin.readLineSync()!);
  if (age > 20) {
    print("You are Matured");
  }

  if (age < 20) {
    print("You are not Matured");
  }

  if(age==5)
  {
    print("You are child");
  }
}
