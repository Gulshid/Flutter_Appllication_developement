import 'package:flutter/material.dart';
//import 'package:flutter_application_1/UI_task5.dart';
import 'package:flutter_application_1/UI_task6.dart';
//import 'package:flutter_application_1/UI_Button.dart';
//import 'package:flutter_application_1/UI_task4.dart';
//import 'package:flutter_application_1/UI_task5.dart';
//import 'package:flutter_application_1/UI_task6.dart';
//import 'package:flutter_application_1/UI_task3.dart';
//import 'package:flutter_application_1/ui.dart';
//import 'package:flutter_application_1/UI_task2.dart';
//import 'package:flutter_application_1/UI_task3.dart';
//import 'package:flutter_application_1/UI_task4.dart';
//import 'package:flutter_application_1/UI_task2.dart';
//import 'package:flutter_application_1/UI_task3.dart';
//import 'package:flutter_application_1/UI_task1.dart';

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
      home: Task6(),
      //  Task1(),
    );

  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 207, 198),
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 3, 72, 128),
        
        title: Center(child: Text("***Flutter Widget**")),
        leading: Icon(Icons.menu ), 
        actions: [Icon(Icons.person)],
      ),

      body: Center(
        child: Column(
          children: [
            Center(
              child: Container(
               
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 39, 201, 10),
                  borderRadius: BorderRadius.circular(10),
                  
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                
                [
                  Text('Hello! Container..',style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),),
                ],),
                      
              ),
            ),
            
          ],
        ),
      )
      
    );
    return scaffold;
  }
}