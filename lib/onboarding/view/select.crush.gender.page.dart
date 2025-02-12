import 'package:crush_dating/onboarding/view/things.select.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedGenderForcrush extends StatefulWidget {
  const SelectedGenderForcrush({super.key});

  @override
  State<SelectedGenderForcrush> createState() => _SelectedGenderForcrushState();
}

class _SelectedGenderForcrushState extends State<SelectedGenderForcrush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Who would you like to meet?",
                  style: GoogleFonts.glory(
                      color: Colors.black,
                      fontSize: 32.w,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "You can chose more than one.",
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.w,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Container(
              height: 50.h,
              width: 414.w,
              decoration: BoxDecoration(
                  color: Color(0xFFEFF1F5),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Men 👦",
                    style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 17.w,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 20.w,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: Colors.black)),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Container(
              height: 50.h,
              width: 414.w,
              decoration: BoxDecoration(
                  color: Color(0xFFEFF1F5),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Women  👧",
                    style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 17.w,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 20.w,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: Colors.black)),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Container(
              height: 50.h,
              width: 414.w,
              decoration: BoxDecoration(
                  color: Color(0xFFEFF1F5),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Nonbinary peoople 🌈",
                    style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 17.w,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 20.w,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: Colors.black)),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
          ),
      
          
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => ThingsSelectPage()));
              },
              child: Container(
                height: 50.h,
                width: 414.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xFF1C1B1F)),
                child: Center(
                  child: Text(
                    "Next",
                    style:
                        GoogleFonts.inter(color: Colors.white, fontSize: 16.w),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
