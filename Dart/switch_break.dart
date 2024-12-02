import 'dart:io';

void main() {
  ///find the vowel and consonent in alphabet
  while(true){
  print("Enter the Alphabet to check whether it is's vowel or consonent: ");
  String? alpha = stdin.readLineSync()!;
  switch (alpha) {
    case 'A' || 'a':
      print("The ALphabet $alpha are entered is vowel ");
      break;

    case 'E' || 'e':
      print("The ALphabet $alpha are entered is vowel ");
      break;

    case 'I' || 'i':
      print("The ALphabet $alpha are entered is vowel ");
      break;

    case 'O' || 'o':
      print("The ALphabet $alpha are entered is vowel ");
      break;

    case 'U' || 'u':
      print("The ALphabet $alpha are entered is vowel ");
      break;

    default:
      print("The alphabet $alpha you are entered is Consonent");
      break;
  }
  }
}
