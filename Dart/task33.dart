//Ask from user to enter th radius of circle and find the area of circle
import 'dart:io';

double Area_of_circle(double radius) {

  double pi = 3.14;
  double area =  pi * (radius * radius);
  return area;
}

void main() {
  double radius;
  print('Enter the radius for circle:');
  radius = double.parse(stdin.readLineSync()!);
  double Area=Area_of_circle(radius);
  print("The Area of circle is :$Area");
}
