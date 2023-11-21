import 'package:akar_app/constant/custmization.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  PageTitle({
    super.key,
    required this.title,
    required this.fontSize,
  });
  double? fontSize = 30.0.wp;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0.wp),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF707070),
        ),
      ),
    );
  }
}
