import 'dart:developer';
import 'dart:io';

import 'package:crush_dating/core/preetty.dio.dart';
import 'package:crush_dating/onboarding/controller/stepform.controller.dart';
import 'package:crush_dating/onboarding/model/register.user.body.dart';
import 'package:crush_dating/onboarding/service/firebaseauth.service.dart';
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
  List<String> images = List.filled(6, ""); // Ensuring correct indexing

  Future<void> _pickImage(int index) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      if (!mounted) return; // Prevent errors if widget is unmounted

      setState(() {
        images[index] = pickedFile.path; // Temporarily store local path
      });

      try {
        final service = RegisterUserService(await createDio(ref));
        FileUploadResponse response =
            await service.uploadProfile(File(pickedFile.path));

        if (!mounted) return;
        setState(() {
          images[index] = response.status ?? ""; // Ensure correct field
        });
      } catch (e) {
        Fluttertoast.showToast(msg: "Failed to upload image");
      }
    }
  }

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
                    onTap: () => _pickImage(index),
                    child: buildPhotoBox(index),
                  ),
                ),
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
            final service = RegisterUserService(await createDio(ref));

            String imageURL = images.where((url) => url.isNotEmpty).join(", ");
            log(fromdata.interests.toString());
            log(fromdata.qualities.toString());

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
                  interests: fromdata.interests.toList(),
                  qualities: fromdata.qualities.toList(),
                  firstPrompt: fromdata.firstPrompt,
                  secondPrompt: fromdata.secondPrompt,
                  thirdPrompt: fromdata.thirdPrompt,
                ),
              );
              final AuthService _authService = AuthService();

              await _authService.signInWithGoogle(context, ref);
            } catch (e) {
              Fluttertoast.showToast(msg: "Something went wrong. Try again!");
            }
          },
          child: Container(
            height: 50.h,
            width: 414.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color(0xFF1C1B1F),
            ),
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

  Widget buildPhotoBox(int index) {
    return Container(
      width: 100.w,
      height: 100.w,
      decoration: BoxDecoration(
        color: const Color(0xFFEFF1F5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: (index < images.length && images[index].isNotEmpty)
            ? Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Icon(
                Icons.add,
                color: Colors.black,
                size: 30.sp,
              ),
      ),
    );
  }
}
