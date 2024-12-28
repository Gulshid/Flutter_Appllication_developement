import 'package:flutter/material.dart';

class Task10 extends StatefulWidget {
  const Task10({super.key});

  @override
  State<Task10> createState() => _Task10State();
}

class _Task10State extends State<Task10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 94, 85),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200,vertical: 200),
        child: Container(
          height: 80,
          width: 80,
          
          child: CircleAvatar(backgroundColor: const Color.fromARGB(255, 43, 50, 231),
          backgroundImage: AssetImage('assets/my_image.png'),
          radius: 20,
          ),
        ),
      )
    );
  }
}