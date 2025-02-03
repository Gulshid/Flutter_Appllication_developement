import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20UI/UI_task10.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Task10()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset('assets/img14.png',
              height: 150.h, 
              width: 150.w,),

            ),
            SizedBox(height: 70.h,),
            Text(
              'Welcome',
              style: GoogleFonts.agbalumo(fontSize: 20.sp),
            ),
             SizedBox(
              height: 200.h,
            ),
            SpinKitRing(
              color: Colors.teal,
              size: 50.0,
            ),
           
            
            // CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
