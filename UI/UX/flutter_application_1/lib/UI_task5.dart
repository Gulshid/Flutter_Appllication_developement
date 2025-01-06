import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task6.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
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
        body: Expanded(
            child: ListView.builder(
                itemCount: Color.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Task6()));
                      },
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
                    ),
                  );
                })));
  }
}
