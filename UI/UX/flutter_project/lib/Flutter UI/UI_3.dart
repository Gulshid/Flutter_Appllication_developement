import 'package:flutter/material.dart';


void main() {
  runApp(APP());
}

class APP extends StatelessWidget {
   const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 5, 221, 12)),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text('Flutter App',
            style: TextStyle(
                fontSize: 20,
                 color: const Color.fromARGB(255, 103, 222, 12),
                 fontWeight: FontWeight.w800,
                 ))),
      ),
      body: Center(
        child: Container(
        width: 150,
        height: 150,
        color: Colors.cyan,
        child: Center(child: Text('Container',style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 25, 6, 232)))),
        
        )
      ),
    );
  }
}
