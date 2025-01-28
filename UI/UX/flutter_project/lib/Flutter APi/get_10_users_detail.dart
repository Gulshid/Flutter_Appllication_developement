import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Models/get_10_users_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class get_10_users extends StatefulWidget {
  const get_10_users({super.key});

  @override
  State<get_10_users> createState() => _get_10_usersState();
}

class _get_10_usersState extends State<get_10_users> {
  List<Get10Users> user = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: get_10_users(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 350.h,
                        decoration: BoxDecoration(
                            color:
                                index.isEven ? Colors.brown : Colors.deepOrange,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 3,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            get_Text(index,'ID:',user[index].id.toString()),
                            get_Text(index,'name:',user[index].name.toString()),
                            get_Text(index,'UserName:',user[index].username.toString()),
                            get_Text(index,'email:',user[index].email.toString()),
                            get_Text(index,'Phone:',user[index].phone.toString()),
                            get_Text(index,'Company:',user[index].company.toString()),
                            get_Text(index,'Website:',user[index].website.toString()),
                          ]

                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Text get_Text(int index, String fieldName, String content) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: fieldName,style:GoogleFonts.roboto(fontSize: 12.sp,fontWeight: FontWeight.bold)),
      TextSpan(text: content,style: TextStyle(fontSize: 15.sp,)),
    ]));
  }

  Future<List<Get10Users>> get_10_users() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        user.add(Get10Users.fromJson(index));
      }
      return user;
    } else {
      return user;
    }
  }
}
