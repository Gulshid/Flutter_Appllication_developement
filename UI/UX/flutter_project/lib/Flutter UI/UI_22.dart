import 'package:flutter/material.dart';

class Ui_22 extends StatefulWidget {
  const Ui_22({super.key});

  @override
  State<Ui_22> createState() => _Ui_22State();
}

class _Ui_22State extends State<Ui_22> {
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
         color: const Color.fromARGB(255, 128, 179, 141),
         child: Column(
          children: [
            Text("Search"),
            Divider(),
            Icon(Icons.search),

          ],
        ),
      ),

      Container(
         color: const Color.fromARGB(255, 149, 208, 222),
         child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Person"),
            Divider(),
            Icon(Icons.person),

          ],
        ),
      ),
     ]),





    ));
  }
}
