import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class sc1 extends StatefulWidget {
  const sc1({super.key});

  @override
  State<sc1> createState() => _sc1State();
}

class _sc1State extends State<sc1> {
  bool isupconning = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.h,
      width: 480.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          //1st
          Center(
            child: Text(
              'English TalkE',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          //2nd
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Classes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          //3rd
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 25.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isupconning = true;
                  });
                },
                child: Container(
                  height: 30.h,
                  width: 140.h,
                  decoration: BoxDecoration(
                    color: isupconning ? Colors.yellow : Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.yellow),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Upcomming',
                          style: TextStyle(
                              color: isupconning ? Colors.black : Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isupconning = false;
                  });
                },
                child: Container(
                  height: 30.h,
                  width: 140.h,
                  decoration: BoxDecoration(
                    color: isupconning ? Colors.white : Colors.yellow,
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.yellow),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Past',
                        style: TextStyle(
                            color: isupconning ? Colors.grey : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
