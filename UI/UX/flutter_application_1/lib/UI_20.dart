import 'package:flutter/material.dart';

class Ui_20 extends StatefulWidget {
  const Ui_20({super.key});

  @override
  State<Ui_20> createState() => _Ui_20State();
}

class _Ui_20State extends State<Ui_20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),

              ),
          ),
          Positioned(
            top: 20,
            bottom: 50,
            left: 20,
            right: 50,
            child: Container(
              height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
            
                ),
              
            
            ),
          ),
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),

              ),
          ),
          Container(
                height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),

              ),
          ),
        ],
      ),
    );
  }
}