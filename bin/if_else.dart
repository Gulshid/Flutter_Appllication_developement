import 'dart:io';

void main()
{
  print("Enter Your Age:-");
  int? age = int.parse(stdin.readLineSync()!);
  if (age > 20) {
    print("You are Matured");
  }

  else
  if (age < 20) {
    print("You are not Matured");
  }
  
  else
  if(age==5)
  {
    print("You are child");
  }
}