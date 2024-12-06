import 'dart:io';

abstract class Hello {
  void name();
  void marks();
  void subject();
}

class Derived extends Hello {
  @override
  void name() {
    List<String> stduent_name = [];
    print("Enter num that how many Student Name you want:");
    int? n = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= n; i++) {
      print("Enter Student $i Name:");
      String? na = stdin.readLineSync()!;
      stduent_name.add(na);
    }
    print("$stduent_name");
  }

  void marks() {
    List<int> stduent_marks = [];
    print("Enter the num that how many Student marks you want :");
    int? n = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= n; i++) {
      print("Enter Student $i Marks:");
      int? na = int.parse(stdin.readLineSync()!);
      stduent_marks.add(na);
    }
    print("$stduent_marks");
  }

  void subject() {
    List<String> stduent_subject = [];
    print("Enter the num that how many Student subbbject that you want:");
    int? n = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= n; i++) {
      print("Enter Student $i Subject:");
      String? na = stdin.readLineSync()!;
      stduent_subject.add(na);
    }
    print("$stduent_subject");

    
  }
}

void main() {
  Derived object = Derived();
  object.name();
  object.subject();
  object.marks();
}
