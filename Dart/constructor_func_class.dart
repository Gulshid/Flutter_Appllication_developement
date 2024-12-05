import 'dart:io';

class Student {
  Student() {
    print("Enter Student Name:");
    String? name = stdin.readLineSync()!;
    print("Enter Student Marks:");
    double? marks = double.parse(stdin.readLineSync()!);
    print("Enter the Student CGPA:");
    double? CGPA = double.parse(stdin.readLineSync()!);
    print("Enter the Student Roll  No:");
    int? roll_no = int.parse(stdin.readLineSync()!);
    print("Enter the Student Current Semester: ");
    String? sems = stdin.readLineSync()!;

    print("\t\t\t*********************");
    print("Student Name:$name");
    print("Student Semester:$sems");
    print("Student Marsks:$marks");
    print("Student CGPA:$CGPA");
    print("Student Roll No:$roll_no");
  }
}

void main() {
  Student std3 = Student();
  print(std3);
}
