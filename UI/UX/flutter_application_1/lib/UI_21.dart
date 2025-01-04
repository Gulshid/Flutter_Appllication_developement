import 'package:flutter/material.dart';

class UI_21 extends StatefulWidget {
  const UI_21({super.key});

  @override
  State<UI_21> createState() => _UI_21State();
}

class _UI_21State extends State<UI_21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('**STACK**',)),
          
        ),

        body: 
        Stack(
          children: [
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 215, 209, 161),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 242, 242),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )]
                  ),
                  ),
                   Container(height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 242, 242),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )]
                  ),),
                    Container(height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 242, 242),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )]
                  ),),
                     Container(height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 242, 242),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )]
                  ),),
                      Container(height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 242, 242),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )]
                  ),),
                ],
              ),
              Positioned(
                top:  60,
                
                child: Container(
                  height: 30,
                  width: 400,
                 decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 240, 240),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 2,
                      )]
                    ),
                ),
              ),

              Positioned(
                right: 40,
                top:100,
                child: Container(
                  height: 200,
                  width: 200,
                   decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 242, 242),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 2,
                      )]
                    ),
                ),
              ),

              
              Positioned(
                top: 100,
                left: 40,
                child: Container(
                  height: 200,
                  width: 200,
                   decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 242, 242),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 2,
                      )]
                    ),
                ),
              ),
          ],
        )
        
    );
  }
}