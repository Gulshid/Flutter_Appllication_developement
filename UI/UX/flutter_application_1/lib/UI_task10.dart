// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task10 extends StatefulWidget {
  const Task10({super.key});

  @override
  State<Task10> createState() => _Task10State();
}

class _Task10State extends State<Task10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 94, 85),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 170,vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CircleAvatar( backgroundImage: AssetImage('assets/img_2.jpg'),
                   radius: 35,
                   
                   ),
              
          Text('Gulshid Zada',style: TextStyle(color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          
          fontFamily: 'Pacifico'),
          ),
          SizedBox(height: 5,),
          Text('Flutter Developer',style: TextStyle(color: const Color.fromARGB(255, 157, 153, 153),
          //fontSize: 10,
          letterSpacing: 2.5,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic),
          ),
        Divider(),
        SizedBox(height: 10,),
        Container(
          height:35,
          width: 300,
          
          decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(
              color: const Color.fromARGB(255, 15, 22, 220),
                spreadRadius: 3,
              blurRadius: 3,
            )]
          ),
          
          child:  Row(
            children: [
                SizedBox(width: 10,),
              Icon(Icons.call,color: const Color.fromARGB(255, 3, 120, 108),),
              SizedBox(width: 5,),
              Text('0300-8900392',style: TextStyle(
                color: const Color.fromARGB(255, 5, 122, 110),
              ),),
            ],
          ),
        ),

        SizedBox(height: 20,),
         Container(
          height:35,
          width: 300,
          
          decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(
              color: const Color.fromARGB(255, 15, 22, 220),
                spreadRadius: 3,
              blurRadius: 3,
            )]
          ),
          
          child:  Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.email,color: const Color.fromARGB(255, 3, 120, 108),),
              SizedBox(width: 5,),
              Text('abc@gmail.com',style: TextStyle(
                color: const Color.fromARGB(255, 5, 122, 110),
              ),),
            ],
          ),
        ),
        Divider(),
         

          
          
          
          ],),
        ),
      ),
        
      

      
    );
  }
}