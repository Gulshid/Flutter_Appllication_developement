import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class UI_26 extends StatefulWidget {
  const UI_26({super.key});
  
  @override
  State<UI_26> createState() => _UI_26State();
}

class _UI_26State extends State<UI_26> {
  
  @override
  Widget build(BuildContext context) {
    //  double hight = MediaQuery.of(context).size.height;
    // double wedth = MediaQuery.of(context).size.width;
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height:80.h,
              width: 80.h,
              decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 136, 182, 138),
                   borderRadius: BorderRadius.circular(10.r),
                   boxShadow: [BoxShadow(
                    color: Colors.grey
                   )]
              ),
             
              
              ),
          ),
          SizedBox(height: 20,),

          //  Container(
          //   height: 220.h,
          //   width: 300.h,
          //   decoration: BoxDecoration(
          //         color: Colors.blue,
          //          borderRadius: BorderRadius.circular(10.r),
          //          boxShadow: [BoxShadow(
          //           color: Colors.grey
          //          )]
          //     ),
          //  ),

        ],
      ),

    );
  }
}