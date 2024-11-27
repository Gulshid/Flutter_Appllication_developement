import 'dart:io';

void main() {
  print("Enter Your Age:-");
  int? age = int.parse(stdin.readLineSync()!);
  if(age>20)
  {
    print("You need to do a Job or Business");

  }
}
