import 'dart:developer';
import 'dart:io';

import 'package:crush_dating/core/preetty.dio.dart';
import 'package:crush_dating/onboarding/controller/stepform.controller.dart';
import 'package:crush_dating/onboarding/model/register.user.body.dart';
import 'package:crush_dating/onboarding/service/register.service.dart';
import 'package:crush_dating/onboarding/view/login.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotosPage extends ConsumerStatefulWidget {
  const UploadPhotosPage({super.key});

  @override
  _UploadPhotosPageState createState() => _UploadPhotosPageState();
}

class _UploadPhotosPageState extends ConsumerState<UploadPhotosPage> {
  File? _imageFile;
  Future<void> _pickImage(int index) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
      final service = RegisterUserService(await createDio());
      FileUploadResponse response =
          await service.uploadProfile(File(pickedFile.path));
      setState(() {
        images[index] = response.status.toString();
      });
    }
  }

  List<String> images = [];
  @override
  Widget build(BuildContext context) {
    final fromdata = ref.watch(userStepFormProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            Text(
              "Time to put a face to \n the name",
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 32.w,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: List.generate(
                    6,
                    (index) => GestureDetector(
                        onTap: () {
                          _pickImage(index);
                        },
                        child: buildPhotoBox(index))),
              ),
            ),
            Spacer(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
        child: GestureDetector(
          onTap: () async {
            final service = RegisterUserService(await createDio());
            String imageURL = "";
            for (int i = 0; i < images.length; i++) {
              setState(() {
                if (imageURL == "") {
                  imageURL = images[i];
                } else {
                  imageURL = "$imageURL, ${images[i]}";
                }
              });
            }
            try {
              Map<String, dynamic> response = await service.registerUser(
                  RegisterModelBody(
                      uuid: fromdata.uuid,
                      emailAddress: fromdata.emailAddress,
                      fullName: fromdata.fullName,
                      profilePicture: imageURL,
                      age: fromdata.age,
                      gender: fromdata.gender,
                      password: fromdata.password,
                      sexualOrientation: fromdata.sexualOrientation,
                      locationCity: fromdata.locationCity,
                      locationState: fromdata.locationState,
                      interests: fromdata.interests,
                      qualities: fromdata.qualities));
              Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(builder: (context) => LoginPage()),
                  (route) => false);
            } catch (e) {
              Fluttertoast.showToast(
                  msg: "Something went wrong to create account");
            }
          },
          child: Container(
            height: 50.h,
            width: 414.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xFF1C1B1F)),
            child: Center(
              child: Text(
                "Let's find your match",
                style: GoogleFonts.inter(color: Colors.white, fontSize: 16.w),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPhotoBox(index) {
    return Container(
      width: 100.w,
      height: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFFEFF1F5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: images[index].isEmpty
            ? Icon(
                Icons.add,
                color: Colors.black,
                size: 30.sp,
              )
            : Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xFFEFF1F5),
                    borderRadius: BorderRadius.circular(12.r),
                    image: DecorationImage(
                        image: NetworkImage(images[index]), fit: BoxFit.cover)),
              ),
      ),
    );
  }
}
