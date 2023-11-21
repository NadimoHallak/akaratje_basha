// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:akar_app/constant/constant_color.dart';
import 'package:akar_app/constant/custmization.dart';

class Mybutton extends StatelessWidget {
  Mybutton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 13.0.wp,
        // color: Colors.amber,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                spreadRadius: 0,
                color: Color.fromARGB(255, 185, 185, 185),
                blurRadius: 5,
                offset: Offset(2, 3))
          ],
          color: MyColor.orange,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: MyColor.whit,
              fontSize: 17.0.sp,
            ),
          ),
        ),
      ),
    );
  }
}
