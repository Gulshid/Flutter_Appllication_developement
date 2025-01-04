import 'package:flutter/material.dart';

class Task16 extends StatefulWidget {
  const Task16({super.key});

  @override
  State<Task16> createState() => _Task16State();
}

class _Task16State extends State<Task16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(leading: Icon(Icons.arrow_back_ios),),
          Container(
            height: 250,
            width: double.infinity,
            decoration:BoxDecoration(
              color: const Color.fromARGB(255, 98, 136, 202),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
            )
          ),
          Positioned(
            left: 70,
            top: 120,
            right: 50,
            child: Container(height: 250,
              width: 450,
              decoration:BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius:BorderRadius.circular(10),
              ),
              child: Column(children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/my_image.png'),
                )

              ],)
              ),
          )
        ],
      ),
    );
  }
}