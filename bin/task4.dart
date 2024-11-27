import 'dart:io';

void main() {
  print("Enter the Prayer that you have done in today:-");

  int? last_time_prayer = int.parse(stdin.readLineSync()!);
  if (last_time_prayer < 5) {
    print("You are in Loss");
  } else if (last_time_prayer == 5) {
    print("You are doing great and add 2 raqat nafal also");
  }
}
