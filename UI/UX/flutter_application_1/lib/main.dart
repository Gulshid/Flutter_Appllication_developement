import 'package:flutter/material.dart';

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
      home: Task2(),
      //  Task1(),
    );

  }
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

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