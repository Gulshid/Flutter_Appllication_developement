// ignore: unnecessary_import
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Tasks/info_Screen.dart';
// import 'package:flutter_application_1/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';

// ignore: must_be_immutable
class login extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  //function
  void showSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
            backgroundColor: Colors.transparent,
            child: Column(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
                ),
                SizedBox(height: 50.h),
                Container(
                  height: 400.h,
                  width: 250.w,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: const Color.fromARGB(255, 5, 154, 10),
                        child: Icon(Icons.check, size: 80, color: Colors.white),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "     Login\nSuccessful!",
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.h),
                      ElevatedButton(
                        onPressed: () {

                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => login_info()));
                        },
                        child: Container(
                          height: 35.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(16.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 1,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              'Home Screen',
                              style: GoogleFonts.agbalumo(
                                  fontSize: 20.sp, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future message() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    print(
        "Email:-${emailController.text = localStorage.getString('email') ?? ''}");
    print(
        "Password:-${passwordController.text = localStorage.getString('password') ?? ''}");
    print('Account is sucessfully logined---->');
  }

  Future init() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('email', "gulshidzada@gmail.com");
    localStorage.setString('password', "11223344");
    // print('${localStorage['email']}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Center(
                child: Image.asset(
              'assets/mobile_photo.jpg',
              height: 150.h,
              width: 150.h,
            )),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Login',
              style: GoogleFonts.agbalumo(fontSize: 30.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'login to access your account and explore all the exciting features we crafted for you',
              style: GoogleFonts.agbalumo(fontSize: 15.sp),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Enter your Email',
              style: GoogleFonts.pacifico(fontSize: 10.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Container(
              height: 40.h,
              width: 400.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Enter your Password',
              style: GoogleFonts.pacifico(fontSize: 10.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Container(
              height: 40.h,
              width: 400.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showSuccessPopup(context);
                // message();
              },
              child: Container(
                height: 40.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.inner,
                        color: Colors.black,
                        blurRadius: 1,
                        spreadRadius: 2,
                      )
                    ]),
                child: Center(
                    child: Text(
                  'login',
                  style:
                      GoogleFonts.agbalumo(fontSize: 30, color: Colors.white),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
              Text('or',style: TextStyle(fontWeight: FontWeight.bold),),
              Expanded(child: Divider(color: Colors.black)),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: GestureDetector(
              // ignore: deprecated_member_use
              onTap: () => launch(
                  'https://accounts.google.com/v3/signin/identifier?authuser=0&continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3DOGB%26utm_medium%3Dapp&ec=GAlAwAE&hl=en_GB&service=accountsettings&flowName=GlifWebSignIn&flowEntry=AddSession&dsh=S1409787571%3A1738650437265925&ddm=1'),
              child: Container(
                height: 40.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 1,
                        spreadRadius: 3,
                      )
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/img_9.webp',
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      'login with google',
                      style: GoogleFonts.agbalumo(fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Dont't have an account?",
                  style:GoogleFonts.agbalumo(fontSize: 15.sp, color: Colors.black),
                ),
              ),
              GestureDetector(
                  // ignore: deprecated_member_use
                  onTap: () => launch(
                      'https://accounts.google.com/lifecycle/steps/signup/name?ddm=1&dsh=S-433819068:1738651552502581&flowEntry=SignUp&flowName=GlifWebSignIn&TL=AO-GBTeMsTDeisjqPZvFkAoRu0KhmTXvOH-VeksQ4-7TTSh1AR5uNroAz360IDkC&continue=https://accounts.google.com/ManageAccount?nc%3D1'),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.agbalumo(
                        fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
