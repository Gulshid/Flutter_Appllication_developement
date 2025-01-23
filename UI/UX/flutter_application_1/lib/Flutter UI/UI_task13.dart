import 'package:flutter/material.dart';


class Task13 extends StatefulWidget {
  const Task13({super.key});

  @override
  State<Task13> createState() => _Task13State();
}

class _Task13State extends State<Task13> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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