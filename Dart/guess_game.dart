import 'dart:io';
import 'dart:math';
void main() {
  int guess_num;

  int random = Random().nextInt(50);
  while (true) {
    print("Enter the Guess Number");
    guess_num = int.parse(stdin.readLineSync()!);
    if (guess_num > random) {
      print("Please!Enter the Smaller Number...");
    } else if (guess_num < random) {
      print("Please!Enter the Greater Number...");
    } else if (guess_num == random) {
      print("Congragulation You got guessed a Number...$guess_num");
      break;
    }
  }
}
