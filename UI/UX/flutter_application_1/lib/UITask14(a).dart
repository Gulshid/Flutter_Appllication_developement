import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height:10,
          width: 10,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
          spreadRadius: 3,
          )]),
          child: Icon(Icons.arrow_back_ios_sharp,color: Colors.black,),
        ),

        title: Center(
          child: Text("T-Shirt Shop",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
        ),

        actions: [
          Icon(Icons.menu,color: Colors.black,),
          SizedBox(width: 30,),
        ],
      ),
      backgroundColor: Colors.white,
      body: ,
    
    );
  }
}