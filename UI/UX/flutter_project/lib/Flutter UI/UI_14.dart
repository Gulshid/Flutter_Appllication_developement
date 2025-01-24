// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UI_14 extends StatefulWidget {
  const UI_14({super.key});

  @override
  State<UI_14> createState() => _UI_14State();
}

class _UI_14State extends State<UI_14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:TextField(
        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        suffixIcon: Icon(Icons.visibility),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3,color: const Color.fromARGB(255, 6, 170, 12))
                        ),
        
       

                         disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.orange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.green),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1, color: Colors.yellowAccent)),
                        hintText: 'enter you email',
                        hintStyle: TextStyle(color: Colors.white)),
        ),

        
      ) ;
  
  }
}