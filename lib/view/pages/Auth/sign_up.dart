import 'package:akar_app/constant/custmization.dart';
import 'package:akar_app/view/widgets/button.dart';
import 'package:akar_app/view/widgets/text_field.dart';
import 'package:akar_app/view/widgets/title.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            children: [
              PageTitle(
                fontSize: 30,
                title: '! حساب جديد',
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.0.wp, bottom: 3.0.wp),
                child: MyTextField(
                  keyboardType: null,
                  obscureText: false,
                  hintText: 'اسم المكتب',
                  icon: Icons.person,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3.0.wp),
                child: MyTextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  hintText: 'رقم المكتب',
                  icon: Icons.call,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3.0.wp),
                child: MyTextField(
                  keyboardType: null,
                  obscureText: true,
                  hintText: 'كلمة السر',
                  icon: Icons.lock,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 0.0.wp),
                child: MyTextField(
                  keyboardType: null,
                  obscureText: true,
                  hintText: 'كلمة السر',
                  icon: Icons.lock,
                ),
              ),
              PageTitle(
                title: "موقع المكتب (إختياري)",
                fontSize: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.0.wp),
                child: SizedBox(
                  height: 48.0.wp,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("assets/images/map.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0.wp,
                  right: 10.0.wp,
                  top: 7.0.wp,
                ),
                child: Mybutton(
                  text: 'أنشئ',
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
