import 'package:crush_dating/home/view/home.page.dart';
import 'package:crush_dating/onboarding/view/login.page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  if (!Hive.isBoxOpen('userdata')) {
    await Hive.openBox('userdata');
  }
  var box = Hive.box('userdata');
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var box = Hive.box('userdata');
    var token = box.get('token');
    return ScreenUtilInit(
      designSize: const Size(414, 896), // Set your design dimensions
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          home: token != null ? HomePage() : LoginPage(),
          // home: CrushonYouPage(),
        );
      },
    );
  }
}
