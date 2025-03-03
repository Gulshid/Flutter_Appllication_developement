import 'package:flutter/material.dart';

class UI_10 extends StatefulWidget {
  const UI_10({super.key});

  @override
  State<UI_10> createState() => _UI_10State();
}

class _UI_10State extends State<UI_10> {
   List color = [Colors.red, Colors.green, Colors.blue, Colors.amber];
  List names = ['jeera', 'jamn', 'soap', 'yakhni'];
  List images = [
    'assets/ic_launcher.png',
    'assets/ic_launcher.png',
    'assets/ic_launcher.png',
    'assets/ic_launcher.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Text('this is listview builder'),
          SizedBox(height: 50),

          
          Expanded(
            // height: 700,
            child: ListView.builder(
                itemCount: color.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      color: color[index],
                      child: Row(
                        children: [
                          // Text('$index'),
                          Text(names[index]),
                         // Image.asset(images[index])
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}