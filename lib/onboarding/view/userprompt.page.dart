import 'package:crush_dating/onboarding/view/UploadPhotos.Page.dart';
import 'package:crush_dating/onboarding/view/select.gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPrompt extends StatefulWidget {
  const UserPrompt({super.key});

  @override
  State<UserPrompt> createState() => _UserPromptState();
}

class _UserPromptState extends State<UserPrompt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
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
                      "What’s it like to date you?",
                      style: GoogleFonts.glory(
                          color: Colors.black,
                          fontSize: 32.w,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
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
                            "First prompt",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 20.w,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        height: 80.h,
                        width: 414.w,
                        child: Center(
                            child: TextFormField(
            style: GoogleFonts.inter(
              fontSize: 18.0,  // Larger font size
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: "Enter your First prompt",
              hintStyle: GoogleFonts.inter(
          fontSize: 18.0,  // Larger hint text
          color: const Color(0xFFA09CAB),
              ),
              contentPadding: EdgeInsets.symmetric(
          vertical: 24.0,  // Increased vertical padding
          horizontal: 20.0,
              ),
              filled: true,
              fillColor: const Color(0xFFEFF1F5),
              constraints: const BoxConstraints(
          minHeight: 80.0,  // Explicit height constraint
              ),
              border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              helperStyle: GoogleFonts.inter(
          color: const Color(0xFFA09CAB),
          fontSize: 14.0,
              ),
            ),
          )),
                      )
                    ],
                  )),
                 
              SizedBox(
                height: 30.h,
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
                            "Second prompt",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 20.w,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        height: 80.h,
                        width: 414.w,
                        child: Center(
                            child: TextFormField(
            style: GoogleFonts.inter(
              fontSize: 18.0,  // Larger font size
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: "Enter your Second prompt",
              hintStyle: GoogleFonts.inter(
          fontSize: 18.0,  // Larger hint text
          color: const Color(0xFFA09CAB),
              ),
              contentPadding: EdgeInsets.symmetric(
          vertical: 24.0,  // Increased vertical padding
          horizontal: 20.0,
              ),
              filled: true,
              fillColor: const Color(0xFFEFF1F5),
              constraints: const BoxConstraints(
          minHeight: 80.0,  // Explicit height constraint
              ),
              border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              helperStyle: GoogleFonts.inter(
          color: const Color(0xFFA09CAB),
          fontSize: 14.0,
              ),
            ),
          )),
                      )
                    ],
                  )),
             
             SizedBox(
                height: 30.h,
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
                            "Third prompt",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 20.w,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        height: 80.h,
                        width: 414.w,
                        child: Center(
                            child: TextFormField(
            style: GoogleFonts.inter(
              fontSize: 18.0,  // Larger font size
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: "Enter your Third prompt",
              hintStyle: GoogleFonts.inter(
          fontSize: 18.0,  // Larger hint text
          color: const Color(0xFFA09CAB),
              ),
              contentPadding: EdgeInsets.symmetric(
          vertical: 24.0,  // Increased vertical padding
          horizontal: 20.0,
              ),
              filled: true,
              fillColor: const Color(0xFFEFF1F5),
              constraints: const BoxConstraints(
          minHeight: 80.0,  // Explicit height constraint
              ),
              border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFFEFF1F5)),
              ),
              helperStyle: GoogleFonts.inter(
          color: const Color(0xFFA09CAB),
          fontSize: 14.0,
              ),
            ),
          )),
                      )
                    ],
                  )),
             
                      ],
          ),
          Container(
            height: MediaQuery.of(context).size.height/8,
          )
        ],
      ),
      bottomSheet: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => UploadPhotosPage()));
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
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 16.w),
                  ),
                ),
              ),
            ),
          )
,
    );
  }
}
