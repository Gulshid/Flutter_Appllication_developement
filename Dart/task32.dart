//task1
//Ask from user to enter his/her name and show a greeting message
import 'dart:io';
//function(return type ,name of func,parameter if)
void greeting() {
//function body
  print("Enter Your name:");
  String name = stdin.readLineSync()!;
  print("Asalam-u-walikum...");
  print("Your Name is $name");
}

void main() {
  //function call
  greeting();
}
