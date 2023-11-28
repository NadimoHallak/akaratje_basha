import 'package:akar_app/constant/constant_color.dart';
import 'package:akar_app/constant/custmization.dart';
import 'package:akar_app/view/widgets/button.dart';
import 'package:akar_app/view/widgets/text_field.dart';
import 'package:akar_app/view/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(children: [
            PageTitle(title: 'التحقق من الرمز', fontSize: 30),

            PageTitle(title: 'أدخل رمز التحقق', fontSize: 25),
            Padding(
              padding: EdgeInsets.only(
                left: 12.0.wp,
                right: 12.0.wp,
                top: 5.0.wp,
                // bottom: 5.0.wp,
              ),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                keyboardType: TextInputType.number,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                pinTheme: PinTheme(
                  selectedColor: MyColor.orange,
                  activeColor: MyColor.orange,
                  inactiveColor: MyColor.orange,
                  shape: PinCodeFieldShape.box,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  activeFillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.wp),
              child: MyTextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  hintText: 'أدخل رقم الموبايل',
                  icon: Icons.call),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0.wp),
              child: SizedBox(
                child: Image.asset(
                    'assets/images/undraw_forgot_password_re_hxwm.png'),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 10.0.wp),
            //   child: Mybutton(
            //     onTap: () {},
            //     text: '! تحقق',
            //   ),
            // ),
          ]),
        ),
      ),
    );
  }
}
