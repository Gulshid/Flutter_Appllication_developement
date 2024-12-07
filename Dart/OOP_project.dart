//Create OOP class that use all pillar of OOP
//Inheritence,Encapsulation,Abstraction,polymorphism

import 'dart:io';

abstract class Home {
  void rooms();
  void bathrooms();
  void fans();
  void lights();
  void person();
}

class Inherit_Home extends Home {
  @override
  void rooms() {
    print("Enter the Rooms in your Home:");
    double? _room = double.parse(stdin.readLineSync()!);
    print("Room:$_room");
  }

  void bathrooms() {
    print("Enter the Bathrooms in Your Home:");
    int? _bath = int.parse(stdin.readLineSync()!);
    print("$_bath");
  }

  void fans() {
    print("Enter the fan in your Home:");
    int _Fans = int.parse(stdin.readLineSync()!);
    print("Fan:$_Fans");
  }

  void lights() {
    print("Enter the Lights in your Home:");
    int _light = int.parse(stdin.readLineSync()!);
    print("Light:$_light");
  }

  void person() {
    print("Enter the Person in your Home:");
    int _per = int.parse(stdin.readLineSync()!);
    print("Person:$_per");
  }
}

void main() {
  Inherit_Home obj = Inherit_Home();
  obj.rooms();
  obj.bathrooms();
  obj.fans();
  obj.lights();
  obj.person();
}
