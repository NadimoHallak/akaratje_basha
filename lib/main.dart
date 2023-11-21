import 'package:akar_app/constant/constant_color.dart';
import 'package:akar_app/routs.dart';
import 'package:akar_app/view/pages/Auth/login_page.dart';
import 'package:akar_app/view/pages/Auth/sign_up.dart';
import 'package:akar_app/view/pages/Auth/verify.dart';
import 'package:akar_app/view/pages/onbording/OnbordingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginPage(),

      // getPages : getPages,
    );
  }
}
