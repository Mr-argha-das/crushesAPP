import 'package:crush_dating/home/home.page.dart';
import 'package:crush_dating/onboarding/controller/stepform.controller.dart';
import 'package:crush_dating/onboarding/service/firebaseauth.service.dart';
import 'package:crush_dating/onboarding/view/name.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    // final userProfile = ref.read(userStepFormProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Background.png'))),
          )),
          SizedBox(
            height: 520.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 13.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 35.w,
                    ),
                    Text(
                      "Crush \nLet’s have your crush",
                      style: GoogleFonts.glory(
                          color: Colors.black,
                          fontSize: 29.w,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 5.h),
                  child: Text(
                    "Vamos enviar um código de 4 digitos para autorizar sua conta. Se ainda não tem uma, vamos cria-la",
                    style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 18.w,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NameAddPage()));
                    },
                    child: SocailButton(
                      icon: 'assets/facebook.png',
                      title: 'Login with Facebook',
                    )),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                    onTap: () async {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      await _authService.signInWithGoogle(context, ref);
                    },
                    child: SocailButton(
                      icon: 'assets/google.png',
                      title: 'Login with Google',
                    )),
                SizedBox(
                  height: 10.h,
                ),
                SocailButton(
                  icon: 'assets/apple.png',
                  title: 'Login with Apple',
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocailButton extends StatelessWidget {
  final String icon;
  final String title;
  const SocailButton({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 348.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(500),
          border: Border.all(color: Colors.black, width: 1)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(icon))),
            ),
            Spacer(),
            Text(
              title,
              style: GoogleFonts.glory(
                  color: Colors.black,
                  fontSize: 18.w,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
