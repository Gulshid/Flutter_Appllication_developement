import 'package:flutter/material.dart';
// 'package:flutter_application_1/UI_task6.dart';

class UI_18 extends StatefulWidget {
  const UI_18({super.key});

  @override
  State<UI_18> createState() => _UI_18State();
}

class _UI_18State extends State<UI_18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:  Icon(Icons.arrow_circle_down,size: 50,color: const Color.fromARGB(255, 3, 209, 9),),
        )
        
    );
  }
}
