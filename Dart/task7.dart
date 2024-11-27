import 'dart:io';

void main() {
  print("Enter the Two number To Check:-");
  int num_1 = int.parse(stdin.readLineSync()!);
  int num_2 = int.parse(stdin.readLineSync()!);
  //check if both num is even,so if print their sum
  if (num_1 % 2 == 0 && num_2 % 2 == 0) {
    int sum = num_1 + num_2;
    print("The sum of two Even number $num_1 and $num_2 is: $sum");
  }
  //check if both num is odd ,print their product
  else if (num_1 % 2 == 1 && num_2 % 2 == 1) {
    int product = num_1 * num_2;
    print("The product of two Odd number $num_1 and $num_2 is:$product");
  }
  //check if one num is even and another is odd ,print their difference
  else if (num_1 % 2 == 0 && num_2 % 2 == 1 ||
      num_1 % 2 == 1 && num_2 % 2 == 0) {
    int difference = num_2 - num_1;
    print(
        "The Difference one Even and another Odd number $num_1 and $num_2 is:$difference");
  }
  //check if both num are equal ,print their square
  if (num_1 == num_2 && num_2 == num_1) {
    int square = num_1 * num_2;
    print("The Square of two two equal number $num_1 and $num_2 is:$square");
  }
}
