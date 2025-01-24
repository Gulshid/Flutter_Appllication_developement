import 'package:flutter/material.dart';

class UI_9 extends StatefulWidget {
  const UI_9({super.key});

  @override
  State<UI_9> createState() => _UI_9State();
}

class _UI_9State extends State<UI_9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ListView(
      children: [
        Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
        height: 100,
        color: Colors.pink,
          
          ),
        ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 100,
              color: Colors.green,
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 100,
              color: Colors.yellow,
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 100,
              color: Colors.teal,
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.pink,
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 181, 110, 3),
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 100,
              color: Colors.cyan[102],
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 198, 41, 96),
            
            ),
          ),


          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 243, 58, 2),
            
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 214, 7, 7),
            
            ),
          ),
        ],
      )
      ,
    
 

    );
  }
}