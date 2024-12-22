import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: const Color.fromARGB(255, 0, 62, 112),
            spreadRadius: 8,
            blurRadius: 6,
          )]
          ),
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Icon(Icons.check_circle
                  
                  ),
                
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 3, 129, 8),
                      borderRadius: BorderRadius.circular(50),
                
                  ),
                
                  
                
                        ),
              ),
            ],
          ),),
      )

    );
  }
}