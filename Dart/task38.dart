//find the area of different shape(circle,rectangle,triangle)
import 'dart:io';

void shape(  double r, double base, double height) {
  double pi = 3.14;
  double area_circle = pi * (r * r);
  double area_rectangle = 0.5 * base * height;
  double area_triangle = 1 / 2 * base * height;
  print("The Area of circle is $area_circle");
  print("The Area of Rectangle is $area_rectangle");
  print("The Area of Triangle is $area_triangle");
}

void main() {
  double  r, base, height;
  print("Enter the radius:");
  r = double.parse(stdin.readLineSync()!);
  print("Enter the Base :");
  base = double.parse(stdin.readLineSync()!);
  print("Enter the height:");
  height = double.parse(stdin.readLineSync()!);
  shape( r, base, height);
}
