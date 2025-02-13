
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class task_login extends StatefulWidget {
  const task_login({super.key});

  @override
  State<task_login> createState() => _task_loginState();
}

class _task_loginState extends State<task_login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    Local_Database();
  }

//local Databae(Shared Preference)...
  Future<void> Local_Database() async {
    SharedPreferences value = await SharedPreferences.getInstance();
    email.text = value.getString('email') ?? '';
    password.text = value.getString('password') ?? '';
  }

//for post the message
  Future<void> login_user() async {
    final response =
        await http.post(Uri.parse('https://reqres.in/api/users'), body: {
      'email': email.text,
      'password': password.text,
    });
    if (response.statusCode == 201) {
      var data = jsonDecode(response.body);
      print('Email-------->${data['email']}');
      print('Password-------->${data['password']}');
      print('Account is Sucessfully loged ---------->');

      SharedPreferences value = await SharedPreferences.getInstance();
      value.setString('email', email.text);
      value.setString('password', email.text);
    } else {
      print('login is failed due to some issue ');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(clipBehavior: Clip.none, children: [
        Positioned.fill(
            child: Image.asset(
          'assets/img_5.jpg',
          fit: BoxFit.cover,
        )),
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
                controller: email,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 39, 26, 154),
                      width: 2.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 130, 19, 164),
                        width: 2.w),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 10, 142, 160),
                        width: 200.w,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        style: BorderStyle.solid),
                  ),
                  labelText: 'Enter Email',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 30.0),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelStyle: GoogleFonts.agbalumo(
                    color: Colors.white,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 67, 25, 172),
                      width: 2.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 19, 106, 164),
                        width: 2.w),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 10, 142, 160),
                        width: 200.w,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        style: BorderStyle.solid),
                  ),
                  labelText: 'Enter Password',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 30.0),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelStyle: GoogleFonts.agbalumo(
                    color: Colors.white,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  login_user();
                },
                child: Container(
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: 4,
                            offset: Offset(1, 2),
                            blurStyle: BlurStyle.normal)
                      ]),
                  child: Center(
                      child: Text(
                    'login Now',
                    style: GoogleFonts.agbalumo(
                        fontSize: 20.sp, color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}