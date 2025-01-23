import 'package:flutter/material.dart';

class Task15 extends StatefulWidget {
  const Task15({super.key});

  @override
  State<Task15> createState() => _Task15State();
}

class _Task15State extends State<Task15> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor:  const Color.fromARGB(255, 2, 62, 4),
              title: Text("Weight Tracker",style: TextStyle(
                color: Colors.white,
              ),),
              
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blue,
                tabs: [Tab(
                icon: Icon(Icons.show_chart,color: Colors.white),
                text: 'Statistic',
        
              ),
              
            
              Tab(
                icon: Icon(Icons.history,color: Colors.white,),
                text: 'History',
        
              ),
             
              ]),
            ),
          body:TabBarView(children: [
           Container(
            color: Colors.white,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Container(height: 150,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 6,
                      color: Colors.grey,
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("57.0 kg",style: TextStyle(
                      color: const Color.fromARGB(255, 4, 67, 7),
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),
                    SizedBox(height: 5,),
                     Text("Current weight",style: TextStyle(
                      color: Colors.black,
                    ),),
                  ],),
                  ),
              
                  SizedBox(height: 30,),
                  Container(
                    height: 150,
                   width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 6,
                      color: Colors.grey,
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Center(
                      child: Text("-3.0 kg",style: TextStyle(
                        color: const Color.fromARGB(255, 4, 67, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),),
                    ),
                    SizedBox(height: 5,),
                     Text("progress Done",style: TextStyle(
                      color: Colors.black,
                    ),),
                  ],),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Container(height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 6,
                      color: Colors.grey,
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Center(
                      child: Text("-3.0 kg",style: TextStyle(
                        color: const Color.fromARGB(255, 4, 67, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),),
                    ),
                    SizedBox(height: 5,),
                     Text("Last Week",style: TextStyle(
                      color: Colors.black,
                    ),),
                  ],),
                  ),
                    SizedBox(width: 20,),
                    Container(height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 6,
                      color: Colors.grey,
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Center(
                      child: Text("-3.0 kg",style: TextStyle(
                        color: const Color.fromARGB(255, 4, 67, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),),
                    ),
                    SizedBox(height: 5,),
                     Text("Last Month",style: TextStyle(
                      color: Colors.black,
                    ),),
                  ],),
                  ),],
                  )
                ],
              ),
           ),
           Container(
            color: Colors.white,
            child: Column(children: [
              Text("History"),
              Icon(Icons.history,color: Colors.black,)
            ],),
           )
            ]
          )
          
        ));
  }
}
