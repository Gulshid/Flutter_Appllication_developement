// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task14 extends StatefulWidget {
  const Task14({super.key});

  @override
  State<Task14> createState() => _Task14State();
}

class _Task14State extends State<Task14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/img14.png',height: 100,width: 100,),
          )
        ],
      ),
    );
  }
}