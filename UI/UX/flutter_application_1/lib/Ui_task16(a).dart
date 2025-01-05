import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen_1 extends StatefulWidget {
  const screen_1({super.key});

  @override
  State<screen_1> createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
backgroundColor: Colors.white,
      body: Stack(
        children: [
          AppBar(leading: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),actions: [
            Icon(Icons.more_horiz,size: 30,color: Colors.black,),
            SizedBox(width: 30,),
          ],),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  const Color.fromARGB(255, 227, 73, 27).withOpacity(0.4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,width: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Summer',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('96 Wardrobes',style: TextStyle(
                    color: const Color.fromARGB(255, 242, 239, 239),
                    fontSize: 15,
                  
                  ),),
                )
              ],
            ),
         
          ),//end of container

          Positioned(
            top: 120,
            left: 30,
            right: 30,
            child: Container(height: 280,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                spreadRadius: 10,
              )]
              
            ),
            child: Row(
              children: [
                Container(height: 300,
                width: 270,
                color: Colors.blue,
                child: Column(children: [
                  Row(),
                   Row(),
                    Row(),
                ],),
                ),

                Container(
                    height: 300,
                width: 170,
                color: Colors.green,
                child: ClipRRect(
                  child: Image.asset('assets/img_13.png',fit: BoxFit.cover,),
                ),
                )
              ],
            ),
          
            
            ),
          ),

              Positioned(
            top: 430,
            left: 30,
            right: 30,
            child: Container(height: 280,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 10,
              )]
              
            ),
               child: Row(
              children: [
                Container(height: 300,
                width: 270,
                color: Colors.blue,),
                Container(
                    height: 300,
                width: 170,
                color: Colors.green,
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
