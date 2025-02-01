import 'package:flutter/material.dart';
import 'package:flutter_application_1/project/project_1/sc1.dart';
import 'package:flutter_application_1/project/project_1/sc2.dart';
import 'package:flutter_application_1/project/project_1/sc3.dart';
import 'package:flutter_application_1/project/project_1/sc4.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class pa_1 extends StatefulWidget {
  const pa_1({super.key});

  @override
  State<pa_1> createState() => _pa_1State();
}

class _pa_1State extends State<pa_1> {
  int indexs=0;
  List page=[
    sc1(),
    Sc2(),
    sc3(),
    sc4(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: page[indexs],
     bottomNavigationBar: ClipRRect(
      
      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),topRight: Radius.circular(10.r)),
      
       child: BottomNavigationBar(
        
        type: BottomNavigationBarType.shifting,
              onTap: (index) {
                setState(() {
                  indexs = index;
                });
              },
              currentIndex: indexs,
              selectedItemColor: const Color.fromARGB(255, 226, 207, 42),
              unselectedItemColor: Colors.black,
        items:
        [BottomNavigationBarItem(icon: 
        Icon(Icons.home,),
        backgroundColor: Colors.purple,
        label: 'Home',
       
        ),
       
        BottomNavigationBarItem(icon: 
        Icon(Icons.notifications,),
        label: 'Notification',
       
        ),
       
        BottomNavigationBarItem(icon: 
        Icon(Icons.history,),
        label: 'History',
       
        ),
       
        BottomNavigationBarItem(icon: 
        Icon(Icons.person,),
        label: 'User',
       
        ),
        
        
        ]),
     ),
    );
  }
}

