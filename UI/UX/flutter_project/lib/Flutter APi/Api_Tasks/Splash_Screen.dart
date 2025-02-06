import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Tasks/login_Screen.dart';
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
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => login()));
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
              child: Image.asset('assets/mobile_photo.jpg',
              height: 150.h, 
              width: 150.w,),

            ),
            SizedBox(height: 30.h,),
            Text(
              'Welcome',
              style: GoogleFonts.agbalumo(fontSize: 20.sp),
            ),
             SizedBox(
              height: 50.h,
            ),
            SpinKitFadingCircle(
              color: Colors.teal,
              size: 80.0,
            ),
           
            
            // CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
