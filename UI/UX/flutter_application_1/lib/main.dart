import 'package:flutter/material.dart';

void main() {
  runApp(Sucess());
}

class Sucess extends StatelessWidget {
  const Sucess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sucess Page',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: SuccesPage());
  }
}

class SuccesPage extends StatelessWidget {
  const SuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 17, 178),
        title: Center(
          child: Text(
            'Sucess Page',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        width: 500,
        height: 400,
        color: const Color.fromARGB(255, 215, 108, 108),
       
      ),
      );
  }
}
