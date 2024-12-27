import 'package:flutter/material.dart';

class UI_17 extends StatefulWidget {
  const UI_17({super.key});

  @override
  State<UI_17> createState() => _UI_17State();
}

class _UI_17State extends State<UI_17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.red,
                  blurRadius: 3,
                  spreadRadius: 5,
                )]
              ),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 243, 54),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.red,
                  blurRadius: 3,
                  spreadRadius: 5,
                )]
              ),
            ),
          ),
      
      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 159, 243, 33),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.red,
                  blurRadius: 3,
                  spreadRadius: 5,
                )]
              ),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 152, 33),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.red,
                  blurRadius: 3,
                  spreadRadius: 5,
                )]
              ),
            ),
          ),
        ],
      ),
    );
  }
}