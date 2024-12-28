// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UI_19 extends StatefulWidget {
  const UI_19({super.key});

  @override
  State<UI_19> createState() => _UI_19State();
}

class _UI_19State extends State<UI_19> {
  int my_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text('UI')),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.bar_chart),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                'H o m e ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                'S e t t i n g ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.face,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                'F a c e ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                'S e a r c h ',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.headphones,
                color: Colors.black,
                size: 30,
              ),
              title: Text(
                'H e a d p h o n e ',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(
              color: Colors.purple,
              spreadRadius: 10,
              blurRadius: 8,
            )]
          ),
          child: BottomNavigationBar(
            
            type: BottomNavigationBarType.shifting,
              onTap: (index) {
                setState(() {
                  my_index = index;
                });
              },
              currentIndex: my_index,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),
                 label: 'Home',
                 backgroundColor: const Color.fromARGB(255, 9, 112, 196),
                 ),
          
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                  backgroundColor: Colors.green,
                ),
          
                BottomNavigationBarItem(
                  icon: Icon(Icons.accessibility_sharp),
                  label: 'Accessiblity',
                  backgroundColor: Colors.purple
                ),
          
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_rounded),
                  label: 'Accessiblity',
                  backgroundColor: const Color.fromARGB(255, 115, 199, 20)
                ),
          
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm),
                  label: 'Accessiblity',
                  backgroundColor: const Color.fromARGB(255, 58, 16, 225)
                ),
              ]),
        ),
      ),
    );
  }
}
