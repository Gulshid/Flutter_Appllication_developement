// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task11 extends StatefulWidget {
  const Task11({super.key});

  @override
  State<Task11> createState() => _Task11State();
}

class _Task11State extends State<Task11> {
  int my_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            onTap: (index) {
              setState(() {
                my_index = index;
              });
            },
            currentIndex: my_index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
                backgroundColor: const Color.fromARGB(255, 131, 150, 166),
              ),
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.shop, color: const Color.fromARGB(212, 0, 0, 0)),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_walk, color: Colors.black),
                label: 'Walk',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black),
                  label: 'Person'),
            ]),
      ),
      backgroundColor: Colors.white,
    drawer: Drawer(),
    );
  }
}
