import 'dart:io';

void main() 
{
  print("Enter Your Pocket Money:-");
  int? pocket_money = int.parse(stdin.readLineSync()!);
  if (pocket_money == 1000) 
  {
    print("Buy a Burger for your friend...");
  } else if (pocket_money == 2000) 
  {
    print("Buy 2 Burger and Ice Cream for your friend...");
  }
}
