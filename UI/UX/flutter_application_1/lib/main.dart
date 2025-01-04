import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_20.dart';
//import 'package:flutter_application_1/UI_task12.dart';




//import 'package:flutter_application_1/Ui_19.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Ui_20(),
      // 
    );

  }
}