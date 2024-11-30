import 'dart:io';

void main() {
  Map<String, String> subject_grade = {};
  print(
      "Enter the number that\n how many student of subject and grade\n you want to enter:");
  int? count = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < count; i++) {
    print("Enter the Subject:");
    String sub = stdin.readLineSync()!;
    print("Enter the grade of subject $sub");
    String grade = stdin.readLineSync()!;

    subject_grade[sub] = grade;

    print("\n Subject and their Grade is :");
     subject_grade.forEach((sub, grade) {
     print("$sub: $grade");
  });
  }
}
