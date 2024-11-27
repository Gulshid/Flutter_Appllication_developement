//Write a program to find the Greatest among three value
import 'dart:io';

void main() {
  print("Enter Three number to check Greatest among them:-");
  int? num_1 = int.parse(stdin.readLineSync()!);
  int? num_2 = int.parse(stdin.readLineSync()!);
  int? num_3 = int.parse(stdin.readLineSync()!);
  if (num_1 > num_2 && num_1 > num_3) {
    print("The Number $num_1 is Greatest among them...");
  } else if (num_2 > num_1 && num_2 > num_3) {
    print("The Number $num_2 is Greatest among them...");
  } else if (num_3 > num_2 && num_3 > num_1) {
    print("The Number $num_3 is Greatest among them...");
  }
}
