void main() {
  //task26
  //Write a program to calculate the sum of all the lement in static list
  List<int> value = [1, 2, 3, 4, 5, 6];
  int sum = 0;
  for (int i = 0; i <  value.length; i += 1) {
    sum = sum + value[i];
  }
  print("The sum of all the element is :$sum");
}
