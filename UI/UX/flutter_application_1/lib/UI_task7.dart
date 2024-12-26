import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task6.dart';

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Task6()));
        },
        child: Icon(Icons.menu, color: Colors.black,),
      )),
    );
  }
}
