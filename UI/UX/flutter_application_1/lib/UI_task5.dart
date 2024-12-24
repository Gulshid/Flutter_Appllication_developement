import 'package:flutter/material.dart';

class task5 extends StatefulWidget {
  const task5({super.key});

  @override
  State<task5> createState() => _task5State();
}

class _task5State extends State<task5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                spreadRadius: 10,
                blurRadius:3,
                color: const Color.fromARGB(255, 4, 193, 17),
              )]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                  Icon(Icons.check_circle,
                  color: const Color.fromARGB(255, 8, 217, 15),
                  size: 100,
                  ),

                  SizedBox(height: 20,),
                  Text('Congratulations!',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),

                  SizedBox(height: 10,),
                  Text('Your Account is Ready to use.',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  SizedBox(height: 20,),

                  Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 196, 20),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 2,
                        color: const Color.fromARGB(255, 235, 212, 3),
                      )]
                    ),
                    
                    child: Center(
                      child: Text('Go to Home',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),

                      
                    ),
                    
                  )
          
            ],),
          ),
        ),
      ),
    );
  }
}