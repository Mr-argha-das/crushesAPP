import 'package:crush_dating/onboarding/view/select.gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NameAddPage extends StatefulWidget {
  const NameAddPage({super.key});

  @override
  State<NameAddPage> createState() => _NameAddPageState();
}

class _NameAddPageState extends State<NameAddPage> {
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
                  "Oh hey! \nLet’s Have your intro first.",
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
                        "Full Name",
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
                    height: 50.h,
                    width: 414.w,
                    child: Center(
                        child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your full name",
                          helperStyle:
                              GoogleFonts.inter(color: Color(0xFFA09CAB)),
                          fillColor: Color(0xFFEFF1F5),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                color: Color(0xFFEFF1F5),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                color: Color(0xFFEFF1F5),
                              )),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                color: Color(0xFFEFF1F5),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              borderSide: BorderSide(
                                color: Color(0xFFEFF1F5),
                              ))),
                    )),
                  )
                ],
              )),
          SizedBox(
            height: 35.h,
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
                        "DOB",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 100.w,
                        child: Center(
                            child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "01",
                              helperStyle:
                                  GoogleFonts.inter(color: Color(0xFFA09CAB)),
                              fillColor: Color(0xFFEFF1F5),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  ))),
                        )),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 100.w,
                        child: Center(
                            child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "01",
                              helperStyle:
                                  GoogleFonts.inter(color: Color(0xFFA09CAB)),
                              fillColor: Color(0xFFEFF1F5),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  ))),
                        )),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SizedBox(
                        height: 50.h,
                        width: 140.w,
                        child: Center(
                            child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "2006",
                              helperStyle:
                                  GoogleFonts.inter(color: Color(0xFFA09CAB)),
                              fillColor: Color(0xFFEFF1F5),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide(
                                    color: Color(0xFFEFF1F5),
                                  ))),
                        )),
                      )
                    ],
                  )
                ],
              )),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => SelectGenderPage()));
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
        ],
      ),
    );
  }
}
