import 'package:flutter/material.dart';

class UI_19 extends StatefulWidget {
  const UI_19({super.key});

  @override
  State<UI_19> createState() => _UI_19State();
}

class _UI_19State extends State<UI_19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text('UI')),
      ),
      drawer:Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.bar_chart),
            
            ),

            ListTile(
              leading: Icon(Icons.home,color: Colors.black,size: 30,),
              title: Text('H o m e ',style: TextStyle(color: Colors.black),),
            ),

             ListTile(
              leading: Icon(Icons.settings,color: Colors.black,size: 30,),
              title: Text('S e t t i n g ',style: TextStyle(color: Colors.black),),
            ),


             ListTile(
              leading: Icon(Icons.face,color: Colors.black,size: 30,),
              title: Text('F a c e ',style: TextStyle(color: Colors.black),),
            ),


             ListTile(
              leading: Icon(Icons.search,color: Colors.black,size: 30,),
              title: Text('S e a r c h ',style: TextStyle(color: Colors.black),),
            ),

             ListTile(
              leading: Icon(Icons.headphones,color: Colors.black,size: 30,),
              title: Text('H e a d p h o n e ',style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ) ,

    );
  }
}