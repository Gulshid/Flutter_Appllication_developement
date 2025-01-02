// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task14 extends StatefulWidget {
  const Task14({super.key});

  @override
  State<Task14> createState() => _Task14State();
}

class _Task14State extends State<Task14> {
    int my_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
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
                backgroundColor:Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop, color: const Color.fromARGB(212, 0, 0, 0)),
                backgroundColor:Colors.teal,
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_walk, color: Colors.black),
                backgroundColor: Colors.white,
                label: 'Walk',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black),
                   backgroundColor:Colors.teal,
                   label: 'Person'),
            ]),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/img14.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 4,
                      blurRadius: 5,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Congratulations My Online\n   show",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    Icons.favorite,
                    color: const Color.fromARGB(255, 221, 86, 77),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/img_12.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 191, 187),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                          fontSize: 40,
                          color: const Color.fromARGB(255, 190, 100, 100)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 191, 187),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.check_circle_sharp,
                    color: const Color.fromARGB(255, 179, 123, 117),
                    size: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 45,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 32, 17),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 214, 63, 52),
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Center(
                child: Text(
                  'BUY NOW',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
