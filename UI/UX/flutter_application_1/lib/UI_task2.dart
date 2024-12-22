import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 212, 213),
      body: Center(
        child: Container(
            height: 400,
            width: 400,
           
            decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(15),

            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 1, 104, 4),
                      borderRadius: BorderRadius.circular(10),
                  ),
                child: Row(
                    
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                    Icon(Icons.check_box,
                    color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Survey', style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                  ],
                ),
                
              ),
              SizedBox(height: 30,),


               Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 1, 104, 4),
                      borderRadius: BorderRadius.circular(10),
                  ),
                child: Row(
                    
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                    Icon(Icons.check_box,
                    color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Daily Survey', style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                         fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                
              ),
              SizedBox(height: 30,),

               Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 1, 104, 4),
                      borderRadius: BorderRadius.circular(10),
                  ),
                child: Row(
                    
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                    Icon(Icons.check_box,
                    color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Zappers Reward', style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                         fontWeight: FontWeight.bold))
                  ],
                ),
                
              ),
              SizedBox(height: 30,),

               Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 1, 104, 4),
                      borderRadius: BorderRadius.circular(10),
                  ),
                child: Row(
                    
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                    Icon(Icons.check_box,
                    color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Referrals', style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                         fontWeight: FontWeight.bold)),
                  ],
                ),
                
              ),
              SizedBox(height: 30,),

               Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 1, 104, 4),
                      borderRadius: BorderRadius.circular(10),
                  ),
                child: Row(
                    
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                    Icon(Icons.check_box,
                    color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Daily Check-in', style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                         fontWeight: FontWeight.bold)),
                  ],
                ),
                
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
