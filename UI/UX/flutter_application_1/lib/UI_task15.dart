import 'package:flutter/material.dart';

class Task15 extends StatefulWidget {
  const Task15({super.key});

  @override
  State<Task15> createState() => _Task15State();
}

class _Task15State extends State<Task15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 18,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Container(
                color: index.isEven ? const Color.fromARGB(255, 12, 212, 19) : const Color.fromARGB(255, 213, 194, 22),
                child: Center(child: Text("$index",style: TextStyle(fontSize: 15),)),
                );
          },
          
          ),

    );
  }
}
