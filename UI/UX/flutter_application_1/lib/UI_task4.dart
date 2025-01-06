import 'package:flutter/material.dart';
//import 'package:flutter_application_1/UI_task5.dart';
import 'package:flutter_application_1/UI_task6.dart';

class task4 extends StatefulWidget {
  const task4({super.key});

  @override
  State<task4> createState() => _task4State();
}

class _task4State extends State<task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 3,
                    color: const Color.fromARGB(255, 4, 193, 17),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.check_circle,
                  color: const Color.fromARGB(255, 8, 217, 15),
                  size: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Congratulations!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your Account is Ready to use.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Task6()));
                  },
                  child: Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 196, 20),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 2,
                            color: const Color.fromARGB(255, 235, 212, 3),
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Go to Home',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
