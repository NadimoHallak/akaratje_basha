// ignore_for_file: must_be_immutable

import 'package:akar_app/constant/constant_color.dart';
import 'package:akar_app/constant/custmization.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.keyboardType,
    required this.obscureText,
    required this.hintText,
    required this.icon,
  });
  TextInputType? keyboardType;
  bool obscureText = false;
  String hintText;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 50.0.wp,
      height: 14.0.wp,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        keyboardType: keyboardType,
        textAlign: TextAlign.right,
        style: TextStyle(
          // height: 3,
          color: MyColor.orange,
          fontWeight: FontWeight.bold,
          fontSize: 4.5.wp,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.white,
          suffixIcon: Icon(icon),
          suffixIconColor: MyColor.orange,
          hintText: hintText,
          hintStyle: const TextStyle(color: MyColor.liteGray),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Color(0xFF707070),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Color(0xFF707070),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
