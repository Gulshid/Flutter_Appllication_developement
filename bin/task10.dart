//Write a program to find the Vowel and Consonent 
import 'dart:io';

void main() {
  print("Enter the Alphabet to Check It's Vowel or Consonent:-");
  String? Alphabet = stdin.readLineSync();
  if (Alphabet == 'a' ||
      Alphabet == 'e' ||
      Alphabet == 'i' ||
      Alphabet == 'o' ||
      Alphabet == 'u') {
    print("The Character $Alphabet you are Entered is Vowel...");
  } else {
    print("The Character $Alphabet you are Entered is Consonent...");
  }
}