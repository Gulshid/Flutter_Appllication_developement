import 'dart:io';
//import 'dart:math';

void main() {
  /*
  int a = 20, b = 30;
  print("before Swapping the value of a and b is :$a $b");
  a = a + b;
  a = a - b;
  b = a - b;
  print("After Swapping The value of a and b is :$a  $b  ");

  int a = 100, b = 50;

  int sum = a + b;
  int sub = b - a;
  int mul = a * b;
  double div = a / b;
  int mod = a % b;

  print("The addition subtraction ,Multiplication ,division and Reminder of two a and b  is :$sum $sub $mul,$div,$mod");
        
  int? x = int.parse(stdin.readLineSync()!);
  String? Hello = stdin.readLineSync();
  double? floating_value = double.parse(stdin.readLineSync()!);
  bool? is_true = true;
  print("The value of x :$x");
  print("the value of String is :$Hello");
  print("the value of floating value is :$floating_value");
  print("The value of boolean is:$is_true");
 
  print("Enter the value that you want to sum:");
  int? count = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= count; i += 1) {
    int? num;
    print("Enter the value:$i");
    num = int.parse(stdin.readLineSync()!);
    sum = sum + num;
  }
  print("The sum of all the value is $sum");


  //swapping of two variable with thired variable
  int a = 9, b = 10;
  int temp = a;
  a = b;
  b = temp;
  //finall a=10,b=9;
  //swapping of two variable without thired variable
  int x = 10, y = 6;
  x = x + y; //x=10+6=16
  y = x - y;  //y=16-6=10 y=10
  x = x - y;  //x=16-10=6 ,x=6
  //finall x=6, y=10
   
  //find the number that it is even or odd
  //if(num%2==0){
  //print("The number is Even");
  //
  // }
  //else if(num%2==1){
  //print("The number is Odd");
  //}
      

  for (int z = 0; z <= 9; z++) {
    //intiall value(starting value) =0, finall(end

    // ing value)=9; incre by 1 till the condition become false now.
    print("$z");
  }

  // sum from 1 to 5
  int sum = 0;
  for (int o = 1; o <= 4; o++) {
  
    sum = sum + o;
  }
     print("The sum of first 5 number is:$sum");
   

  for (int a = 10; a >= 0; a--) {
    print("$a");
  }
    

  for (int i = 0; i <= 1000; i += 1) {
    if (i % 2 == 0) {
      print("The sum of all even number is $i");
    }
  }
    

  //guess game
  
  int random = Random().nextInt(15);
  while (true) {
    print("Enter your Guess number:");
  int? user_guess = int.parse(stdin.readLineSync()!);
    if (user_guess > random) {
      print("Please enter a Smaller number!");
    } else if (user_guess < random) {
      print("Please enter the greater number");
    } else if (user_guess == random) {
      print("Congrate! you got a system guess number $user_guess");
        break;
    }
   
  }
  
  //find the factorial of number
  print("Enter the number that you want to find the factorial:");
  int? fact = int.parse(stdin.readLineSync()!);
  int res_fact = 1;
  for (int a = 1; a <= fact; a += 1) {
    res_fact *= a;
  }
  print("The fact of $fact is: $res_fact");
  

  //find the base to power value Answer
  print("Enter the BAse value:");
  int? Base = int.parse(stdin.readLineSync()!);
  print("Enter the Exponent value:");
  int? Expo = int.parse(stdin.readLineSync()!);
  int power_res = 1;
  for (int u = 1; u <= Expo; u++) {
    power_res = power_res * Base;
  }
  print("The Answer of Base to the Raised Exponent number $Base and $Expo is $power_res");

*/
  //user should enter enter the number how much number he wnat to sum
  print("Enter how many number that you want to sum:");
  int? enter_num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int y = 1; y <= enter_num; y++) {
    print("Enter the number:$y");
    int? num = int.parse(stdin.readLineSync()!);
    sum += num;
  }

  print("The sum of all the number is :$sum");

  
}
