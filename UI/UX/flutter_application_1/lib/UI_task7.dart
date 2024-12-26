import 'package:flutter/material.dart';

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  List name = [
    "Palak Panner",
    "Jeera Rice ",
    "Butter Nan",
    "Gulabjaman",
    "Palak Paneer",
  ];

  List image = [
    "assets/img_1.jpg",
    "assets/img_2.jpg"
        "assets/img_3.jpg"
        "assets/img_4.jpg"
        "assets/img_5.jpg"
  ];

  List Color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('My Recipes'),
        ),
        body: Expanded( child: ListView.builder(
            itemCount: Color.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Color[index],
                  child: Row(
                    children: [
                      Text(name[index]),
                      Image.asset(image[index]),
                    ],
                  ),
                ),
              );
            })));
  }
}
