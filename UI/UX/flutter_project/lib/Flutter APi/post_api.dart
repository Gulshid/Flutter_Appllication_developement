import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Models/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class post_api extends StatefulWidget {
  const post_api({super.key});

  @override
  State<post_api> createState() => _post_apiState();
}

class _post_apiState extends State<post_api> {
  List<PostApi> post_Api = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 141, 72, 173),
          title: Center(
              child: Text('Post Api',
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                  ))),
        ),
        body: FutureBuilder(
            future: get_data(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: post_Api.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          height: 300.h,
                          decoration: BoxDecoration(
                            color:index.isEven?const Color.fromARGB(255, 184, 26, 212):const Color.fromARGB(255, 59, 151, 196),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'User id: ${post_Api[index].userId}',
                                    style: GoogleFonts.aBeeZee(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Id: ${post_Api[index].id}',
                                    style: GoogleFonts.aBeeZee(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Title:${post_Api[index].title}',
                                    style: GoogleFonts.aBeeZee(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Body: ${post_Api[index].body}',
                                    style: GoogleFonts.aBeeZee(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  Future<List<PostApi>> get_data() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        post_Api.add(PostApi.fromJson(index));
      }
      return post_Api;
    } else {
      return post_Api;
    }
  }
}
