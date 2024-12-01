import 'dart:io';

void main() {
  //Map
  //list and map are same but list can Access in index of list while map can Access in value of the map
  Map value = {"value_1": 1, "value_2": 2, 3: "Hello"};
  print(value['value_2']);
  print(value[3]);

  Map<String, int> sub_marks = {"math": 87, "English": 88, "Urdu": 90};
  print(sub_marks['math']);

  Map<String, int> name_marks = {};
  print("Enter the number that how many student of name are enter:");
  int? student = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= student; i++) {
    print("Enter the student name:");
    String name = stdin.readLineSync()!;
    print("Enter the marks of $name");
    int marks = int.parse(stdin.readLineSync()!);
    name_marks[name] = marks;
  }
  name_marks.forEach((name, marks) {
    print("$name:$marks");
  });
}
