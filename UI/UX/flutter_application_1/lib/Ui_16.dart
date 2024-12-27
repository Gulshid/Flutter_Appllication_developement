// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class UI_16 extends StatefulWidget {
  const UI_16({super.key});

  @override
  State<UI_16> createState() => _UI_16State();
}

class _UI_16State extends State<UI_16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //column and Row
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //     Container(
      //         height: 150,
      //         width: 400,
      //         decoration: BoxDecoration(color: Colors.green,
      //         borderRadius: BorderRadius.circular(10),
      //         boxShadow: [BoxShadow(
      //           color: Colors.blue,
      //           blurRadius: 3,
      //           spreadRadius: 5,
      //         )]
      //         ),
      //     ),
        
      //     Container(
      //         height: 150,
      //         width: 400,
      //         decoration: BoxDecoration(color: const Color.fromARGB(255, 190, 202, 14),
      //         borderRadius: BorderRadius.circular(10),
      //         boxShadow: [BoxShadow(
      //           color: Colors.blue,
      //           blurRadius: 3,
      //           spreadRadius: 5,
      //         )]
      //         ),
      //     ),
        
        
      //     Container(
      //         height: 150,
      //         width: 400,
      //         decoration: BoxDecoration(color: const Color.fromARGB(255, 76, 89, 175),
      //         borderRadius: BorderRadius.circular(10),
      //         boxShadow: [BoxShadow(
      //           color: const Color.fromARGB(255, 65, 243, 33),
      //           blurRadius: 3,
      //           spreadRadius: 5,
      //         )]
      //         ),
      //     ),
        
        
      //     Container(
      //         height: 150,
      //         width: 400,
      //         decoration: BoxDecoration(color: const Color.fromARGB(255, 177, 43, 128),
      //         borderRadius: BorderRadius.circular(10),
      //         boxShadow: [BoxShadow(
      //           color: const Color.fromARGB(255, 194, 181, 7),
      //           blurRadius: 3,
      //           spreadRadius: 5,
      //         )]
      //         ),
      //     ),
        
        
      //   ],),
      // )


      //row
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 300,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.green,
                  spreadRadius: 2,
                  blurRadius: 5,)]
                ),
              ),
          
              Container(
                height: 300,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 33, 194),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.green,
                  spreadRadius: 2,
                  blurRadius: 5,)]
                ),
              ),
          
          
              Container(
                height: 300,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 145, 243, 33),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.green,
                  spreadRadius: 2,
                  blurRadius: 5,)]
                ),
              ),
            ],
          ),
        ),
      ),

      
    );
  }
}