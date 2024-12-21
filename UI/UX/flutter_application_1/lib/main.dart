import 'package:flutter/material.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hello_World(),
    );
  }
}

class Hello_World extends StatelessWidget {
  const Hello_World ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           backgroundColor:  Color.fromARGB(255, 1, 26, 46),
      title: Center(child: Text('Hello! FLutter...',style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        
        )
      )),
      leading: Icon(Icons.menu,color: Colors.white,),
      
      ),
     

    );
  }
}
