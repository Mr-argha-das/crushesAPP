import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadPhotosPage extends StatelessWidget {
  const UploadPhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                children: List.generate(6, (index) => buildPhotoBox()),
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
          onTap: () {
            // Navigator.push(
            //     context,
            //     CupertinoPageRoute(
            //         builder: (context) => SelecteQualitiesPage()));
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

  Widget buildPhotoBox() {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Color(0xFFEFF1F5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30.sp,
        ),
      ),
    );
  }
}
