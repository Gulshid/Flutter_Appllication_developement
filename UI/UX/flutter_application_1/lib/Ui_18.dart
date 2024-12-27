import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task8.dart';

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
          leading:  GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Instagram_UI()));
        },
        child: Icon(Icons.arrow_circle_down,size: 50,color: const Color.fromARGB(255, 3, 209, 9),),
        
        ),
        )
        
    );
  }
}
