import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task15.dart';
//import 'package:flutter_application_1/UI_task15.dart';


class Spalash_screen extends StatefulWidget {
  const Spalash_screen({super.key});

  @override
  State<Spalash_screen> createState() => _Spalash_screenState();
}

class _Spalash_screenState extends State<Spalash_screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Task15()));
    });
    initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 88, 7, 103),
      child: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}
