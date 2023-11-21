import 'package:akar_app/constant/custmization.dart';
import 'package:akar_app/view/widgets/button.dart';
import 'package:akar_app/view/widgets/text_field.dart';
import 'package:akar_app/view/widgets/title.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            children: [
              PageTitle(
                fontSize: 30,
                title: 'تسجيل الدخول',
              ),
              SizedBox(
                child: Image.asset(
                    "assets/images/undraw_mobile_login_re_9ntv.png"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0.wp, bottom: 5.0.wp),
                child: MyTextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  hintText: 'رقم الموبايل',
                  icon: Icons.call,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0.wp),
                child: MyTextField(
                  keyboardType: null,
                  obscureText: true,
                  hintText: 'كلمة السر',
                  icon: Icons.lock,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0.wp,
                  right: 10.0.wp,
                  top: 7.0.wp,
                  bottom: 4.0.wp,
                ),
                child: Mybutton(
                  text: 'تسجيل دخول',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
                child: Mybutton(
                  text: 'إنشاء حساب جديد',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
