import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class practise_2 extends StatefulWidget {
  const practise_2({super.key});

  @override
  State<practise_2> createState() => _practise_2State();
}

class _practise_2State extends State<practise_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: practise_Animation(),
    );
  }
}

const color_text = [
  Colors.blue,Colors.red,Colors.greenAccent,Colors.orange,Colors.teal,
];

const color_texts = [
  Color.fromARGB(255, 233, 33, 243),Color.fromARGB(255, 103, 53, 179),Color.fromARGB(255, 240, 105, 121),Color.fromARGB(255, 255, 0, 93),Color.fromARGB(255, 220, 22, 19),
];

class practise_Animation extends StatelessWidget {
  const practise_Animation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: 400.h,
        width: 500.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12..r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                spreadRadius: 5,
              )
            ]),
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 30.sp),
          child: Center(
            child: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText('Gulshid Zada',
                  textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),colors: color_text),
              ColorizeAnimatedText('Programmer',
                  textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),colors: color_texts)
            ]),
          ),
        ),
      ),
    );
  }
}
