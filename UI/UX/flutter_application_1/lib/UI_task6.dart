import 'package:flutter/material.dart';

class Task6 extends StatefulWidget {
  const Task6({super.key});

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  
                children: [Text("Let's get Started",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                                ),),
                  ],
              ),
            ),

             SizedBox(height: 100,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: 30,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border:Border.all(
                              color: const Color.fromARGB(255, 242, 205, 21),
                            )
                          ),
                          
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/img_9.webp',height: 1,width: 1,),
                            )
                          ],
                        ),
                        ),
                        
                      ),
                

                    ],
                  ),
          ],
        ));
  }
}
