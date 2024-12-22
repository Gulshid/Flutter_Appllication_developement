import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 140, 79, 0),
          title: Center(
            child: Text(
              'Button ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text('Click Here',style: TextStyle(
                color: Colors.black
              ),),
              onPressed: () {
                print('Button Clicked');
              },
              onLongPress: () {
                print('Button Long time pressed');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Clik Here',style: TextStyle(
                color: Colors.black
              ),),
              onPressed: () {
                print('Elvated button pressed');
              },
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              child: Text('Click Here',style: TextStyle(
                color: Colors.black
              ),),
              onPressed: () {
                print('outline button');
              },
            )
          ],
        ));
  }
}
