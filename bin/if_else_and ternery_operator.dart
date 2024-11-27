void main() {
  //using if _else
  print("By using if_else conditional statement");
  int x = 2, y = 3;
  int max = 0;
  if (x > y) {
    max = x;
  } else if (y > x) {
    max = y;
  }
  print("The greater value is $max");

  //using ternery operator
  print("by using ternery conditional statement");
  int a = 2, b = 3;
  int max_2 = (a > b) ? a : b;
  print("The greater value is $max_2");
}
