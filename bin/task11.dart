void main() {
  //Using for loop to print sum form 1 to 5:-
  print("Using for loop to print the sum from 1 to 5:");
  int sum = 0;
  for (int i = 0; i <= 5; i++) {
    sum = sum + i;
  }
  print("The Sum upto 5 is:$sum");
  print("***********************");

  //print number from 1 to 10
  for (int a = 0; a <= 9; a++) {
    print(a);
  }
  print("**********************");

  //print Even  number from 1 to 1000
  for (int j = 0; j <= 999; j++) {
    if (j % 2 == 0) {
      print("$j");
    }
  }
  print("*********************");

  //print Odd number from 1 to 1000
  for (int k = 0; k <= 999; k++) {
    if (k % 2 == 1) {
      print("$k");
    }
  }
}
