//import 'package:flutter/cupertino.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task13 extends StatefulWidget {
  const Task13({super.key});

  @override
  State<Task13> createState() => _Task13State();
}

class _Task13State extends State<Task13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          itemCount: 18,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 4.0,mainAxisSpacing: 4.0),
            itemBuilder: (context, index) {
              return Container(
                    color: index.isEven?const Color.fromARGB(255, 8, 164, 13) : const Color.fromARGB(255, 209, 189, 7),
                child: Center(child: Text('$index',style: TextStyle(fontWeight: FontWeight.bold),)),
              
              );
            }));
  }
}