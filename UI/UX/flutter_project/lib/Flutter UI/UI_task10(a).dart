import 'package:flutter/material.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(10),
              // ignore: prefer_const_constructors
              boxShadow: [BoxShadow(
                color: const Color.fromARGB(255, 135, 161, 183),
                blurRadius: 4,
                spreadRadius: 5,
              )]
            ),
            child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20,),
          ),
        ),

        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Welcome back! Glad\nto see you. Again!',style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              
              ),),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,color: Colors.black,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter Your Email',
                ),

                
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_sharp,color: Colors.black,),
                  hintText: 'Enter Your Password',
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password!',style: TextStyle(
                    color: Colors.grey
                  ),)
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 60,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.black,
                    boxShadow: [BoxShadow(
                      color: const Color.fromARGB(255, 4, 85, 151),
                      blurRadius: 3,
                      spreadRadius: 4,
                    )]
                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                
              ),
              SizedBox(height: 15,),
              Center(
                child: Text('--------------or----------------',style: TextStyle(
                  color:const Color.fromARGB(255, 134, 123, 123),
                  fontSize: 20,
                  
                ),),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 3,
                        blurRadius: 4,
                      )]
                    ),
                    child: ClipRRect(
                      child: Image.asset('assets/img.webp',fit:BoxFit.cover,),
                    ),
                  ),
                  Container(  height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 3,
                        blurRadius: 4,
                      )]
                    ),
                    child: ClipRRect(
                      child: Image.asset('assets/img_9.webp',fit:BoxFit.cover,),
                    ),
                    ),
                  Container(  height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 3,
                        blurRadius: 4,
                      )]
                    ),
                    child: ClipRRect(
                      child: Image.asset('assets/img_8.png',),
                    ),
                    ),
                ],
              ),
              SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.black),),
              Text('Register Now.',style: TextStyle(color: const Color.fromARGB(255, 40, 123, 192)),)
                ],
              )
            ],
          ),
        ),
    );
  }
}