import 'package:flutter/material.dart';

class UI_8 extends StatefulWidget {
  const UI_8({super.key});

  @override
  State<UI_8> createState() => _UI_8State();
}

class _UI_8State extends State<UI_8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

    body: Row(
      children: [
             Expanded(
              flex: 2,
              child: Container(
              
                color: Colors.yellow,
          
              ),
              ) ,

              Expanded(
                  flex: 3,
                child: Container(
                color: Colors.green,
              
              )),
           Expanded(
            flex: 4,
            child: 
              Container(
                color: Colors.pink,
       
              ),
           ),

             Expanded(
              flex: 5,
              child:  Container(
                color: Colors.blue,
             
              ),
              ),


            Expanded(
              flex: 6,
              child:  Container(
                color: Colors.grey,
                
              ),
              )  ,
            
            Expanded(
              flex: 7,
              child:   Container(
                color: Colors.teal,
              
              ),
               ),

      ] 
    ),

    );
  }
}