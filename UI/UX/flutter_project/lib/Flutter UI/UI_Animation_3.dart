import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Animation_3 extends StatefulWidget {
  const Animation_3({super.key});

  @override
  State<Animation_3> createState() => _Animation_3State();
}

class _Animation_3State extends State<Animation_3> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Color_text(),
      ),
    );
  }
}

 const Color_tex=[
    Colors.cyan,Colors.brown,Colors.amber,Colors.green
  ];

class Color_text extends  StatelessWidget {
  const Color_text({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 400.h,
        width: 500.w,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: DefaultTextStyle(style: TextStyle(fontSize: 20.sp), child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText('Gulshid', textStyle: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold), colors:Color_tex ),
              ColorizeAnimatedText('Zada', textStyle: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold), colors:Color_tex )
            ],
          
             repeatForever: true,
            
            )),
        ),
      
      ),
    );
  }
}