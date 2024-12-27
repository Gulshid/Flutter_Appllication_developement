import 'package:flutter/material.dart';

class UI_15 extends StatefulWidget {
  const UI_15({super.key});

  @override
  State<UI_15> createState() => _UI_15State();
}

class _UI_15State extends State<UI_15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('UI',style: TextStyle(color: Colors.black),)),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search_sharp),

        Icon(Icons.access_time),Icon(Icons.accessibility_sharp),Icon(Icons.account_balance),Icon(Icons.ad_units_outlined),
        SizedBox(width: 35,)],
    ),
    backgroundColor: Colors.greenAccent,
        body:Center(
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 44, 48, 171),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(
              spreadRadius: 3,
              blurRadius: 6,
              color: const Color.fromARGB(255, 10, 107, 186),
            )]
            ),
            child: Column(
              children: [
                Center(child: Text('Hello !Container...',style: TextStyle(fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.red),)),
                Icon(Icons.access_alarm_outlined,color: Colors.amber,size: 50,),
                Icon(Icons.face,size: 30,color: Colors.white,),
                Icon(Icons.favorite,size: 50,color: const Color.fromARGB(255, 255, 22, 6),),
                Icon(Icons.heart_broken,size: 50,color: const Color.fromARGB(255, 235, 27, 12),)

              ],
            ),
          ),
        ) ,
 
    );
  }
}