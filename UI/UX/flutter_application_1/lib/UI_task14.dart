import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_task11.dart';
import 'package:flutter_application_1/UI_task12.dart';
import 'package:flutter_application_1/UI_task13.dart';
import 'package:flutter_application_1/UI_task15.dart';
import 'package:flutter_application_1/Ui_task14(a).dart';

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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 98, 136, 202),
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
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task12()));
              },
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
               onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task13()));
              },
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
               onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task14()));
              },
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
               onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task15()));
              },
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
               onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Task11()));
              },
            ),
          ],
        ),
      ),
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
                backgroundColor: const Color.fromARGB(255, 212, 88, 22),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                backgroundColor: const Color.fromARGB(255, 12, 141, 247),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/img_2.jpg'),
                ),
                backgroundColor: const Color.fromARGB(255, 165, 174, 46),
                label: "Story",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notification_important_outlined,
                  color: Colors.black,
                ),
                backgroundColor: Colors.pink,
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                backgroundColor: const Color.fromARGB(255, 224, 19, 217),
                label: "Menu",
              ),
            ]),
      ),
      body: Stack(
        children: [
          AppBar(
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 98, 136, 202),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              )),
          Positioned(
            left: 50,
            top: 40,
            right: 50,
            child: Container(
              height: 250,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/img_2.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Gulshid Zada',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text('Pakistan,Peshawar'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Purchased ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            '120',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Wined ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            '271',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Likes ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            '12k',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            // left: -330,
            // right: -20,
            child: Container(
              height: 500,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),

              //

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Collection",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screen_1()));
                        },
                        child: Container(
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  spreadRadius: 4,
                                )
                              ]),
                          child: Image.asset(
                            'assets/img_13.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                        child: Image.asset(
                          'assets/img_15.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                        child: Image.asset(
                          'assets/img_16.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Tags',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'Kurtas',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color.fromARGB(255, 236, 75, 17),
                        ),
                        child: Center(
                          child: Text(
                            'Jackets',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color.fromARGB(255, 212, 52, 105),
                        ),
                        child: Center(
                          child: Text(
                            'Lehanga',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 47, 119, 178),
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: Text(
                            'Salwar Suit',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 184, 13, 98),
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: Text(
                            'Gowp',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
