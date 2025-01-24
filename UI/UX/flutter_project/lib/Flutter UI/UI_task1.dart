import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Flutter%20UI/UI_task3.dart';

//import 'package:flutter_application_1/UI_task3.dart';



class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Wallpaper Store",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor:  Color.fromARGB(171, 15, 220, 7),
          actions: [
            Icon(Icons.search,
            color: Colors.white,
            ),      
            SizedBox(width: 20),

            Icon(Icons.more_vert,
            color: Colors.white),
            SizedBox(width: 20,),

            Icon(Icons.favorite,
            color: Colors.white),
            SizedBox(width: 20),

            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(width: 30),

          ],
          
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            
          ),
          
        ),
        
        backgroundColor: Colors.white,
        
        body:  Column(
  
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              
              child: Text(
                '-:Buy & Purchase:-',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 232, 185, 12),
                ),
              ),
            ),
            
          
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 161, 72),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    child: Image.asset('assets/img_1.jpg'),
                  ),
                ),
              ),
            
              Padding(padding: EdgeInsets.all(20)),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),

                  
                  child: GestureDetector(
                    onTap: (){
                     
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>task3()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 17, 161, 72),
                        borderRadius: BorderRadius.circular(15),
                      ),
                       child: ClipRRect(
                      child: Image.asset('assets/img_2.jpg'),
                    ),
                    ),
                  ),
                )
              ]),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color:  const Color.fromARGB(255, 17, 161, 72),
                    borderRadius: BorderRadius.circular(15),
                  ),
                   child: ClipRRect(
                    child: Image.asset('assets/img_3.jpg'),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 17, 161, 72),
                      borderRadius: BorderRadius.circular(15),
                    ),
                     child: ClipRRect(
                    child: Image.asset('assets/img_4.jpg'),
                  ),
                  ),
                )
              ]),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color:  const Color.fromARGB(255, 17, 161, 72),
                    borderRadius: BorderRadius.circular(15),
                  ),
                   child: ClipRRect(
                    child: Image.asset('assets/img_5.jpg'),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(255, 17, 161, 72),
                      borderRadius: BorderRadius.circular(15),
                    ),
                     child: ClipRRect(
                    child: Image.asset('assets/img_6.jpg'),
                    
                  ),
                  ),
                )
              ]),
            ]),
          ],
        ));
  }
}
