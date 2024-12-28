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
      body: CircleAvatar()
    );
  }
}