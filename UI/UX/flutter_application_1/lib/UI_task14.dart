import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task15.dart';

class Task14 extends StatefulWidget {
  const Task14({super.key});

  @override
  State<Task14> createState() => _Task14State();
}

class _Task14State extends State<Task14> {
  List COlors = [
    Colors.red,
    const Color.fromARGB(255, 231, 244, 54),
    const Color.fromARGB(255, 133, 244, 54),
    const Color.fromARGB(255, 54, 187, 244),
    const Color.fromARGB(255, 244, 54, 206),
    const Color.fromARGB(255, 245, 26, 11),
    const Color.fromARGB(255, 54, 73, 244),
    const Color.fromARGB(255, 8, 51, 143),
    Colors.red,
    Colors.red,
    Colors.red,
    const Color.fromARGB(255, 212, 244, 54),
    const Color.fromARGB(255, 138, 43, 57),
    const Color.fromARGB(255, 198, 139, 11),
    const Color.fromARGB(255, 137, 130, 49),
    const Color.fromARGB(255, 244, 54, 165),
    Colors.red,
    const Color.fromARGB(255, 11, 172, 97),
    const Color.fromARGB(255, 240, 127, 21),
    const Color.fromARGB(255, 54, 244, 136),
    const Color.fromARGB(255, 161, 230, 86),
    const Color.fromARGB(255, 120, 82, 192),
    const Color.fromARGB(255, 104, 35, 71),
    Colors.red,
    const Color.fromARGB(255, 98, 10, 156),
    const Color.fromARGB(255, 226, 226, 30),
    const Color.fromARGB(255, 196, 202, 193),
    const Color.fromARGB(255, 244, 238, 54),
    const Color.fromARGB(255, 9, 19, 196),
    const Color.fromARGB(255, 209, 244, 54),
    Colors.red,
    Colors.red,
    const Color.fromARGB(255, 130, 244, 54),
    const Color.fromARGB(255, 79, 54, 244),
    const Color.fromARGB(255, 35, 207, 8),
    const Color.fromARGB(255, 162, 244, 54),
    const Color.fromARGB(255, 143, 14, 143),
    const Color.fromARGB(255, 222, 10, 123),
    const Color.fromARGB(255, 70, 244, 54),
    const Color.fromARGB(255, 16, 84, 31),
    const Color.fromARGB(255, 184, 54, 244),
    const Color.fromARGB(255, 28, 148, 64),
    Colors.red,
    const Color.fromARGB(255, 54, 184, 244),
    const Color.fromARGB(255, 114, 54, 244),
    Colors.red,
    Colors.red,
    const Color.fromARGB(255, 35, 223, 207),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 48,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Task15()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: COlors[index],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text(
                    '$index',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )),
                ),
              ),
            );
          }),
    );
  }
}
