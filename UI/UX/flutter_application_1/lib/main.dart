import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Hello World' ,style: TextStyle(fontSize: 30,color: Colors.purple, )),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        actions: [Icon(Icons.menu)],
        leading: Icon(Icons.arrow_back_ios_new),


      ),

      body:Column(
          // mainAxisAlignment: MainAxisAlignment.,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('this is testing'),
            Text('this is testing'),
            Text('this is testing'),
            Text('this is testing'),
            Text('this is testing'),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
          ]
      ),
    );
    
  }
}
