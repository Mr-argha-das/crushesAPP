// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class FindCrushPage extends StatelessWidget {
//   const FindCrushPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {},
//         ),
//         title: Text(
//           "Find your crush",
//           style: GoogleFonts.inter(
//             color: Colors.black,
//             fontSize: 18.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications_none, color: Colors.black),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20.w),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.r),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 10.r,
//                           spreadRadius: 2.r,
//                           offset: Offset(0, 5),
//                         )
//                       ],
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20.r),
//                       child: Image.network(
//                         "https://via.placeholder.com/400",
//                         fit: BoxFit.cover,
//                         height: 400.h,
//                         width: double.infinity,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 40.h,
//                   left: 30.w,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Kalvin, 23",
//                         style: GoogleFonts.inter(
//                           color: Colors.white,
//                           fontSize: 24.sp,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "Los Angeles - 20 KMS AWAY",
//                         style: GoogleFonts.inter(
//                           color: Colors.white70,
//                           fontSize: 14.sp,
//                         ),
//                       ),
//                       SizedBox(height: 8.h),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 12.w, vertical: 6.h),
//                         decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(12.r),
//                         ),
//                         child: Text(
//                           "Active Now",
//                           style: GoogleFonts.inter(
//                             color: Colors.white,
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: 20.h),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 30.r,
//                 backgroundColor: Colors.redAccent,
//                 child: Icon(Icons.thumb_down, color: Colors.white, size: 30.sp),
//               ),
//               SizedBox(width: 30.w),
//               CircleAvatar(
//                 radius: 30.r,
//                 backgroundColor: Colors.green,
//                 child: Icon(Icons.thumb_up, color: Colors.white, size: 30.sp),
//               ),
//             ],
//           ),
//           SizedBox(height: 40.h),
//           BottomNavigationBar(
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.home_outlined), label: ""),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.favorite_border), label: ""),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.message_outlined), label: ""),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.settings_outlined), label: ""),
//             ],
//             selectedItemColor: Colors.black,
//             unselectedItemColor: Colors.black38,
//           )
//         ],
//       ),
//     );
//   }
// }