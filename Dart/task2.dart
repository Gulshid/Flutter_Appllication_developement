void main() {
  //swapping without Thired variable:-
  int value1 = 5;
  int value2 = 10;
  //Before Swapping the value of value1 and value2:-
  print(
      "The value of value1 and value2 Before swapping is $value1 and $value2");
  value1 = value1 + value2;
  value2 = value1 - value2;
  value1 = value1 - value2;

  //After Swapping the value of value1 and value2:-
  print("The value of value1 and value2 After swapping is $value1 and $value2");
}
