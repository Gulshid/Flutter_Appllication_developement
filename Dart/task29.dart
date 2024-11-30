import 'dart:io';

void main() {
  print("Enter a positive integer:");
  int n = int.parse(stdin.readLineSync()!); 
  List<int> userList = [];
  int sum = 0, evenSum = 0, oddSum = 0;

  print("Enter $n elements:");
  for (int i = 0; i < n; i++) {
    int element = int.parse(stdin.readLineSync()!); 
    userList.add(element);
    sum += element; 

    if (element % 2 == 0) {
      evenSum += element;
    } else {
      oddSum += element;
    }
  }

  print("The list is: $userList");
  print("The total sum of all elements is: $sum");
  print("The sum of even numbers is: $evenSum");
  print("The sum of odd numbers is: $oddSum");

  // Check if total sum equals the sum of even and odd numbers
  if (sum == (evenSum + oddSum)) {
    print("The total sum equals the sum of even and odd numbers.");
  } else {
    print("The total sum does not equal the sum of even and odd numbers.");
  }
}
