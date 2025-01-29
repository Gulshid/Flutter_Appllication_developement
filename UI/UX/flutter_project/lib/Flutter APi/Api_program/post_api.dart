// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class Post_api extends StatefulWidget {
  const Post_api({super.key});

  @override
  State<Post_api> createState() => _Post_apiState();
}

class _Post_apiState extends State<Post_api> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Text(
            'Post Api',
            style: GoogleFonts.agbalumo(fontSize: 20),
          )),
          SizedBox(
            height: 40.h,
          ),
          Center(
              child: Text(
            'Sign in ',
            style: GoogleFonts.agbalumo(fontSize: 30, color: Colors.green),
          )),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color: Colors.cyan, width: 20),
                  )),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color: Colors.cyan, width: 20),
                  )),
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          InkWell(
            onTap: () {
              // login(emailController.text.toString(),
              //     passwordController.text.toString());
            },
            child: Container(
              height: 50.h,
              width: 250.w,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 150, 125, 125),
                      spreadRadius: 4,
                    )
                  ]),
              child: Center(
                  child: Text(
                'Sign in',
                style: GoogleFonts.agbalumo(color: Colors.black, fontSize: 20),
              )),
            ),
          )
        ],
      ),
    );
  }
}
