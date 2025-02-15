import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class curved_bar extends StatefulWidget {
  const curved_bar({super.key});

  @override
  State<curved_bar> createState() => _curved_barState();
}

class _curved_barState extends State<curved_bar> {
  List pages = [
    Home(),
    Student(),
    Teacher(),
    Bank(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: pages[index],
      //bottom Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.greenAccent,
          height: 75.0,
          animationCurve: Curves.decelerate,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.deepPurple,
          onTap: (value) {
            setState(() {
              index = value;
              print(value);
            });
          },
          // selectedFontSize: 5,
          items: [
            Icon(Icons.home
            ,
            color: Colors.lightBlue,
            ),
            Icon(Icons.person,
              color: Colors.amber,),
            Icon(Icons.person,
              color: Colors.lightGreen,),
            Icon(Icons.money,
              color: Colors.red,),
          ]),
    );
  }
}

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                spreadRadius: 4,
              )
            ]),
      ),
    );
  }
}

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                spreadRadius: 4,
              )
            ]),
      ),
    );
  }
}

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                spreadRadius: 4,
              )
            ]),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                spreadRadius: 4,
              )
            ]),
      ),
    );
  }
}
