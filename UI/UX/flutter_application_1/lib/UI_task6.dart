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
              padding: const EdgeInsets.symmetric(horizontal: 50),
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
             
              Column(
                
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

                            SizedBox(width: 20,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Icon(Icons.facebook,color: const Color.fromARGB(255, 26, 76, 228),),
                              
                            ),
                            SizedBox(width:20 ,),
                            Text('Continue with Facebook',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),
                        ),

                        
                      ),
                     
                    SizedBox(height: 10,),
                     Container(
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
                            SizedBox(width: 20,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset('assets/img_6.jpg',height: 20,width: 30,),
                              
                            ),
                            SizedBox(width:20 ,),
                            Text('Continue with Google',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            
                            )
                          ],
                        ),
                        ),

                        SizedBox(height: 10,),
                     Container(
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
                            SizedBox(width: 20,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:Icon(Icons.apple),
                              
                            ),
                            SizedBox(width:20 ,),
                            Text('Continue with Apple',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            
                            )
                          ],
                        ),
                        ),

                        SizedBox(height: 10,),
                        Text('______________or______________'),
                         SizedBox(height: 10,),

                           Container(
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
                            SizedBox(width: 20,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child:Icon(Icons.email,color: Colors.black,),
                              
                            ),
                            SizedBox(width:20 ,),
                            Text('Continue with Email',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            
                            )
                          ],
                        ),
                        ),
       

                    ],
                  ),
          
    ],),);
  }
}
