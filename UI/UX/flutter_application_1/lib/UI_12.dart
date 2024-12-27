import 'package:flutter/material.dart';

class UI_12 extends StatefulWidget {
  const UI_12({super.key});

  @override
  State<UI_12> createState() => _UI_12State();
}

class _UI_12State extends State<UI_12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 6,
          gridDelegate:
              // ignore: prefer_const_constructors
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 600,
                color: Colors.blue,
              ),
            );
          }),
    );
  }
}
