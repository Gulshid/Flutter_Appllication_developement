import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Models/get_100_model.dart';
// import 'package:flutter_application_1/Flutter%20APi/get_100_post_api.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class practise_get extends StatefulWidget {
  const practise_get({super.key});

  @override
  State<practise_get> createState() => _practise_getState();
}

class _practise_getState extends State<practise_get> {
  List<PostApi> Post = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 250.h,
                decoration: BoxDecoration(
                    color: index.isOdd
                        ? Colors.cyan.withOpacity(0.5)
                        : const Color.fromARGB(191, 119, 203, 16).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 6,
                      )
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Gulshid Zada',
                          style: GoogleFonts.pacifico(fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Future<List<PostApi>> get() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List<PostApi> posts = postApiFromJson(response.body);
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
