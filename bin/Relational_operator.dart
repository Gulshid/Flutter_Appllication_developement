import 'dart:io';

void main() 
{
  print("Enter the value of a and b:");
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
  if (a != b) 
  {
    print("The value of a not equal to b");
  } 
  else 
  if (a == b) 
  {
    print("The value of a is equal to b");
  } 
  else 
  if (a > b) 
  {
    print("The value of a is greater than b");
  } 
  else 
  if (a < b) 
  {
    print("The value of a is less than b");
  }
  else
  if (a <= b) 
  {
    print("The value of a is less than or equal to b");
  }
  else
   if (a >= b) 
  {
    print("The value of a is greater than or equal to b");
  }
}
