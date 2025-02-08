import 'package:flutter/material.dart';

class animation_1 extends StatefulWidget {
  @override
  State<animation_1> createState() => _animation_1State();
}

class _animation_1State extends State<animation_1> {
  double _margin = 20;
  double _height = 500;
  double _opacity = 1;
  double _width = 200;
  double _padding = 30;
  Color _color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        decoration: BoxDecoration(
           color: _color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(
            color: Colors.green,
            blurRadius: 6,
            spreadRadius: 4,
          )]
        ),
        duration: Duration(seconds: 1),
        height: _height,
        margin: EdgeInsets.all(_margin),
        padding: EdgeInsets.all(_padding),
        width: _width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _margin = 50;
                  });
                },
                child: Text(
                  'movement',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            SizedBox(
              height: 20,
            ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _padding = 50;
                  });
                },
                child: Text(
                  'padding',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.yellow;
                  });
                },
                child: Text(
                  'Color',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _height = 450;
                  });
                },
                child: Text(
                  'height',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = 500;
                  });
                },
                child: Text(
                  'Width',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity = 0;
                  });
                },
                child: Text(
                  'opacity',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                )),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                ' Hide me',
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
