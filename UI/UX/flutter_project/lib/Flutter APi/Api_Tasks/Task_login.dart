import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class task_login extends StatefulWidget {
  const task_login({super.key});

  @override
  State<task_login> createState() => _task_loginState();
}

class _task_loginState extends State<task_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children:[
          
          Positioned.fill(child: Image.asset('assets/img_5.jpg',fit: BoxFit.cover,)),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
         
            SizedBox(
              height: 120.h,
            ),
            Center(
                child: Text(
              'login Now',
              style: GoogleFonts.agbalumo(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(color: const Color.fromARGB(255, 39, 26, 154),width: 2.w,),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: const Color.fromARGB(255, 130, 19, 164),width: 2.w),
                  ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: const Color.fromARGB(255, 10, 142, 160),
                      width: 200.w,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      style: BorderStyle.solid
                      ),
                    ), 
                    labelText: 'Enter Email',contentPadding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 30.0),floatingLabelAlignment: FloatingLabelAlignment.start,floatingLabelBehavior: FloatingLabelBehavior.auto,labelStyle: GoogleFonts.agbalumo(color: Colors.white,fontSize: 15.sp,),),
              ),
            ),
        
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(color: const Color.fromARGB(255, 67, 25, 172),width: 2.w,),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: const Color.fromARGB(255, 19, 106, 164),width: 2.w),
                  ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: const Color.fromARGB(255, 10, 142, 160),
                      width: 200.w,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      style: BorderStyle.solid
                      ),
                    ), 
                    labelText: 'Enter Password',contentPadding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 30.0),floatingLabelAlignment: FloatingLabelAlignment.start,floatingLabelBehavior: FloatingLabelBehavior.auto,labelStyle: GoogleFonts.agbalumo(color: Colors.white,fontSize: 15.sp,),),
              ),
            ),
        
            SizedBox(height: 40.h,),
            Center(
              child: Container(
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 4,
                    offset: Offset(1,2),
                    blurStyle: BlurStyle.normal
                  )]
                ),
              
                child: Center(child: Text('login Now',style: GoogleFonts.agbalumo(fontSize: 20.sp,color: Colors.white),)),
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}
