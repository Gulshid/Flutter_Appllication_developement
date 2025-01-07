import 'package:flutter/material.dart';

class Task15 extends StatefulWidget {
  const Task15({super.key});

  @override
  State<Task15> createState() => _Task15State();
}

class _Task15State extends State<Task15> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
     child: Scaffold(appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 167, 126, 174),

      bottom: const TabBar(tabs: [

        Tab(
          icon: Icon(Icons.home,color: Colors.black,),
        ),
       
          Tab(
          icon: Icon(Icons.search,color: Colors.black,),
        ),

          Tab(
          icon: Icon(Icons.person,color: Colors.black,),
        ),

      ]),

      title: Center(child: Text('Flutter Tab Bar')),
     ),

     body: TabBarView(children: [

      Container(
        
        color: const Color.fromARGB(255, 174, 151, 115),
        child: Column(
          children: [
            Text("Home"),
            Divider(),
            Icon(Icons.home),

          ],
        ),
      ),

      Container(
         child: Column(
          children: [
            Text("Search"),
            Divider(),
            Icon(Icons.search),

          ],
        ),
        color: const Color.fromARGB(255, 128, 179, 141),
      ),

      Container(
         child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Person"),
            Divider(),
            Icon(Icons.person),

          ],
        ),
        color: const Color.fromARGB(255, 149, 208, 222),
      ),
     ]),





    ));
  }
}
