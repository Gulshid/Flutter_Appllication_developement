// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UI_13 extends StatefulWidget {
  const UI_13({super.key});

  @override
  State<UI_13> createState() => _UI_13State();
}

class _UI_13State extends State<UI_13> {
  @override
  Widget build(BuildContext context) {
       double screenWidth = MediaQuery.of(context).size.width;
         double screenheight2 = MediaQuery.of(context).size.height;
     
    return Scaffold(
         appBar: AppBar(
        title: Text("MediaQuery Example"),
      ),
      body: Center(
        child: Container(
          width: screenWidth > 600 ? 400 : screenWidth * 0.8,
          height: screenheight2,
          color: Colors.blue,
          child: Center(
            child: Text(
              screenWidth > 600 ? "Large Screen" : "Small Screen",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}