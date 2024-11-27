import 'dart:io';
import 'dart:math';

void main() {
  //task21
  //enter two number from the keyboard and find the base to the power
  print("Enter the Base Value:");
  int? base = int.parse(stdin.readLineSync()!);
  print("Enter the Exponent Value:");
  int? expo = int.parse(stdin.readLineSync()!);

  num result = pow(base, expo);
  print("The $base to the raised $expo is:$result");
}
