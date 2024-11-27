void main() {
  //Decremment Operators
  //postfix decrement
  int x = 3;
  print("The value of x before decrement is =$x");
  x--;
  print("The value of x after decrement is =$x");
  print("***************************");
  //prefix decrement
  int y = 3;
  print("The value of y before decrement is=$y");
  --y;
  print("the value of y after decrement is =$y");
  print("************************");

  ///Logic between post and pre fix decrement is same but different is on that
  ///we value assign to another variable

  //posttfix decrement
  int w = 3;
  print("The value of x before decrement is =$w");
  int postfix = w--;
  print("The value of x after decrement is =$postfix");
  print("***************************");
  //prefix Decrement
  int z = 3;
  print("The value of y before decrement is=$z");
  int prefix = --z;
  print("the value of y after decrement is =$prefix");
}