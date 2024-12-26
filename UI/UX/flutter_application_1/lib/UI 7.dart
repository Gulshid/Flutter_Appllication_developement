import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task6.dart';

class UI_7 extends StatefulWidget {
  const UI_7({super.key});

  @override
  State<UI_7> createState() => _UI_7State();
}

class _UI_7State extends State<UI_7> {
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
