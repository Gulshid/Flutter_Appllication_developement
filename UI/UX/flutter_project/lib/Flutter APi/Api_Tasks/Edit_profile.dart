import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  File? _image;
  final picker = ImagePicker();

  

  Future<void> getImage(ImageSource source) async {
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
       
      });
      Navigator.pop(context);
    } else {
      print('No Image is Picked');
    }
  }

  Future<void> displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => getImage(ImageSource.gallery),
                    child: const Icon(Icons.photo, size: 80),
                  ),
                  Text('Select Image',
                      style: GoogleFonts.agbalumo(
                          fontSize: 13.sp, color: Colors.black)),
                ],
              ),
              SizedBox(width: 40.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => getImage(ImageSource.camera),
                    child: const Icon(Icons.camera_alt, size: 60),
                  ),
                  Text('Take Photo',
                      style: GoogleFonts.agbalumo(fontSize: 13.sp)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Center(
            child: Column(children: [
              Text('Edit Profile',
                  style: GoogleFonts.agbalumo(
                      fontSize: 20.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Stack(
                children: [
                  Container(
                    width: 100.h,
                    height: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: _image == null
                          ? Image.asset(
                              'assets/img_2.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              _image!,
                              height: 100.h,
                              width: 100.w,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        displayBottomSheet(context);
                      },
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.mode_edit, size: 20),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                'Add photo',
                style: GoogleFonts.agbalumo(
                    fontSize: 14.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: GoogleFonts.agbalumo()),
                      const SizedBox(height: 3),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text('Email', style: GoogleFonts.agbalumo()),
                      const SizedBox(height: 3),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text('Phone', style: GoogleFonts.agbalumo()),
                      const SizedBox(height: 3),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text('Password', style: GoogleFonts.agbalumo()),
                      const SizedBox(height: 3),
                      TextFormField(
                        obscureText: true, // Hide password input
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 50),
                      GestureDetector(
                        onTap: () {
                          print('Profile updated!');
                          // Implement actual update logic here
                        },
                        child: Container(
                          width: double.infinity,
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text('Update',
                                style: GoogleFonts.agbalumo(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
