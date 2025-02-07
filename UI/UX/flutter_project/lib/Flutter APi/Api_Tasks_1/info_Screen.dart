// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Tasks_1/Edit_profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class login_info extends StatefulWidget {
  const login_info({super.key});

  @override
  State<login_info> createState() => _login_infoState();
}

class _login_infoState extends State<login_info> {
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
            height: 10.h,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Center(
                child: Image.asset(
              'assets/mobile_photo.jpg',
              height: 100.h,
              width: 100.h,
            )),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Your Info',
              style: GoogleFonts.agbalumo(fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Show your Information in this screen through\n                      shared preference',
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
                  },
                  child: Text(
                    'Logout?',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Your Email',
              style: GoogleFonts.pacifico(fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 40.h,
              width: 400.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
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
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Your Password',
              style: GoogleFonts.pacifico(fontSize: 20.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 40.h,
              width: 400.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r))),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                init();
                message();
              },
              child: Container(
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 3,
                      )
                    ]),
                child: Center(
                    child: Text(
                  'Show your Information here',
                  style: GoogleFonts.agbalumo(
                      fontSize: 15.sp, color: Colors.white),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                child: Divider(
              color: Colors.black,
            )),
            Text(
              'or',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Divider(
              color: Colors.black,
            )),
          ]),
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
          Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Dont't have an account?",
                style:
                    GoogleFonts.agbalumo(fontSize: 15.sp, color: Colors.black),
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
          ])
        ],
      ),
    );
  }
}
