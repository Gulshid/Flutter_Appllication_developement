void main() {
  //Increment Operators
  //postfix Increment
  int x = 3;
  print("The value of x before increment is =$x");
  x++;
  print("The value of x after increment is =$x");
  print("***************************");
  //prefix Increment
  int y = 3;
  print("The value of y before increment is=$y");
  ++y;
  print("the value of y after increment is =$y");
  print("************************");

  ///Logic between post and pre fix Imcrement is same but different is on that
  ///we value assign to another variable

  //psotfix Increment
  int w = 3;
  print("The value of x before increment is =$w");
  int postfix = w++;
  print("The value of x after increment is =$postfix");
  print("***************************");
  //prefix Increment
  int z = 3;
  print("The value of y before increment is=$z");
  int prefix = ++z;
  print("the value of y after increment is =$prefix");
}
