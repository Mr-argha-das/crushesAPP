import 'dart:developer';

import 'package:crush_dating/core/preetty.dio.dart';
import 'package:crush_dating/home/view/home.page.dart';
import 'package:crush_dating/onboarding/controller/stepform.controller.dart';
import 'package:crush_dating/onboarding/model/login.response.model.dart';
import 'package:crush_dating/onboarding/service/login.service.dart';
import 'package:crush_dating/onboarding/view/name.page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle(context, WidgetRef ref) async {
    try {
      // Trigger the Google Sign-In process
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        log("nulll");
      } else {
        log("Google User Name: ${googleUser.displayName}");
        log("Google User Email: ${googleUser.email}");
        log("Google User ID: ${googleUser.id}");
        log("Google User Photo URL: ${googleUser.photoUrl}");
        final service = LoginService(await createDio(ref));
        try {
          LoginResponseModel response = await service.loginUser(
              grantType: "password",
              username: googleUser.email,
              password: googleUser.id,
              clientId: googleUser.email,
              clientSecret: googleUser.email);
          if (!Hive.isBoxOpen('userdata')) {
            await Hive.openBox('userdata');
          }
          var box = Hive.box('userdata');
          await box.put('token', response.accessToken);
          Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => HomePage()),
              (route) => false);
        } catch (E) {
          Fluttertoast.showToast(msg: "account not found");
          ref
              .read(userStepFormProvider.notifier)
              .updateFullName(googleUser.displayName!);
          ref
              .read(userStepFormProvider.notifier)
              .updateEmailAddress(googleUser.email);
          ref.read(userStepFormProvider.notifier).updateUuid(googleUser.email);
          ref.read(userStepFormProvider.notifier).updatePassword(googleUser.id);
          ref.read(userStepFormProvider.notifier).updateLocationCity("Jaipure");
          ref.read(userStepFormProvider.notifier).updateProfilePicture(
              "https://media.licdn.com/dms/image/v2/D4D03AQE7MlpcLtRcKA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1691585595728?e=2147483647&v=beta&t=9X7KQnWckGmTjBBPBicS9eQkJgv1pra6siAFTIArNHo");
          ref
              .read(userStepFormProvider.notifier)
              .updateLocationState("Rajsthan");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NameAddPage()));
        }
      }

      // Obtain the authentication details
    } catch (e) {
      log("Google Sign-In Error: $e");
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
