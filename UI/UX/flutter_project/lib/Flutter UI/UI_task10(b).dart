import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20UI/UI_task11.dart';

class page_2 extends StatefulWidget {
  const page_2({super.key});

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(10),
              // ignore: prefer_const_constructors
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 135, 161, 183),
                  blurRadius: 4,
                  spreadRadius: 5,
                )
              ]),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Hello! Register to get\nstarted',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.text_decrease),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Username',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Enter Your Email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.black,
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.black,
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Confirm Password',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Task11()));
                },
                child: Container(
                  height: 60,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 4, 85, 151),
                          blurRadius: 3,
                          spreadRadius: 4,
                        )
                      ]),
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                '--------------or Register with----------------',
                style: TextStyle(
                  color: const Color.fromARGB(255, 134, 123, 123),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          spreadRadius: 3,
                          blurRadius: 4,
                        )
                      ]),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/img.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          spreadRadius: 3,
                          blurRadius: 4,
                        )
                      ]),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/img_9.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          spreadRadius: 3,
                          blurRadius: 4,
                        )
                      ]),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/img_8.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already  have an account?",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'Login Now.',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 40, 123, 192)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
