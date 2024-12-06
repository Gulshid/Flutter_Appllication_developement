import 'dart:io';
//polymorphism is to define object in different size
abstract class Shape_function {
  void circle();
  void rectangle();
  void triangle();
}

class Shape extends Shape_function {
  @override
  void circle() {
    print("Enter the radius value for circle:");
    double? radius = double.parse(stdin.readLineSync()!);
    double pi = 3.14;
    double area_of_circle = pi * (radius * radius);
    print("The Area of circle is:$area_of_circle");
  }

  void rectangle() {
    print("Enter the base and Height for rectangle:");
    double base = double.parse(stdin.readLineSync()!);
    double height = double.parse(stdin.readLineSync()!);
    double area_of_rectangle = 0.5 * base * height;
    print("The Area of Rectangle is:$area_of_rectangle");
  }

  void triangle() {
    print("Enter the lenght and width for traingle:");
    double length = double.parse(stdin.readLineSync()!);
    double width = double.parse(stdin.readLineSync()!);
    double area_of_triangle = 0.5 * length * width;
    print("The Area of Triangle is:$area_of_triangle");
  }
}

void main() {
  Shape shape = Shape();
  shape.circle();
  shape.rectangle();
  shape.triangle();
}
