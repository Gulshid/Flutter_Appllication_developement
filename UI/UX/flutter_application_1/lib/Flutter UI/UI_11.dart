import 'package:flutter/material.dart';

class UI_11 extends StatefulWidget {
  const UI_11({super.key});

  @override
  State<UI_11> createState() => _UI_11State();
}

class _UI_11State extends State<UI_11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //GridView 
      GridView.count(crossAxisCount: 3,
      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

         Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),


         Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

         Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

         Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 300,
            width: 600,
            color: Colors.purple,
          ),
        ),
      ],
      
      )
      ,
    );
  }
}