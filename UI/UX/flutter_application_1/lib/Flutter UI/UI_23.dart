import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20UI/UI_task1.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>Task1()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Container(
          color: Colors.blue,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("L o a d i n g",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              CircularProgressIndicator(),
            ],
          ),
        ),),

    );
  }
}