import 'package:flutter/material.dart';
//import 'package:flutter_application_1/UI_15.dart';
//import 'package:flutter_application_1/UI_17.dart';
//import 'package:flutter_application_1/Ui_18.dart';
import 'package:flutter_application_1/Ui_19.dart';
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
      home:UI_19(),
      //  Task1(),
    );

  }
}