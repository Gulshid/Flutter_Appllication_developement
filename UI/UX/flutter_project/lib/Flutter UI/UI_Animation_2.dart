import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Animation_2 extends StatefulWidget {
  const Animation_2({super.key});

  @override
  State<Animation_2> createState() => _Animation_2State();
}

class _Animation_2State extends State<Animation_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Animation_Text(),
      ),
    );
  }
}

 class Animation_Text extends StatelessWidget {
  const Animation_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 500.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color:const Color.fromARGB(255, 111, 76, 175),
          borderRadius: BorderRadius.circular(13.r),
          boxShadow: [BoxShadow(
            color: Colors.yellow,
            blurRadius: 5,
            spreadRadius: 4,
          )]
        ),
        child: DefaultTextStyle(style: GoogleFonts.agbalumo(fontSize: 30,color: const Color.fromARGB(255, 35, 217, 108)),
         child: Center(
           child: AnimatedTextKit(animatedTexts: [
                   
            TyperAnimatedText('Hello! this is Animated',textStyle: TextStyle(color: const Color.fromARGB(255, 215, 138, 37))),
            TyperAnimatedText('My Name is Gulshid Zada',textStyle: TextStyle(color: const Color.fromARGB(255, 205, 32, 182))),
           ],
           repeatForever: true,
           ),
         )),
      ),
    );
  }
} 

