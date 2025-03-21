import 'package:crush_dating/chatssection/chatsection.page.dart';
import 'package:crush_dating/crushonyou/crushonyou.page.dart';
import 'package:crush_dating/onboarding/view/login.page.dart';
import 'package:crush_dating/onboarding/view/UploadPhotos.Page.dart';
import 'package:crush_dating/onboarding/view/userprompt.page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896), // Set your design dimensions
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          home: LoginPage(),
          // home: CrushonYouPage(),
        );
      },
    );
  }
}
