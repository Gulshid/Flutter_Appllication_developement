// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task9 extends StatefulWidget {
  const Task9({super.key});

  @override
  State<Task9> createState() => _Task9State();
}

class _Task9State extends State<Task9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 6, 121),
        leading: Icon(Icons.menu,color: Colors.black,size: 30,),
        actions: [Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
             borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
           
            child: Image.asset('assets/img_1.jpg',height: 50,width: 50,),borderRadius: BorderRadius.circular(15),
          ),
        ),SizedBox(width: 40,),],
      ),

    body:Column(children: [
        Container(
          height: 200,
          width: 500,
          color: Colors.blue,
          child: Row(
            children: [
              Text('Dashboard',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),)
            ],
          ),
        )

    ],)
      
    );
  }
}