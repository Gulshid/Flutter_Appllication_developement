// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/UI_task6.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key});

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Login & Register ',
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 49, 223, 130),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: 
        
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: 
              AssetImage('assets/img_11.jpeg'),
              fit: BoxFit.cover,
              ),
            ) ,
          ),
        )
        );
  }
}
