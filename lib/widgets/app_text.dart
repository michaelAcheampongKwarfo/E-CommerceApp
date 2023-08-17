import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const AppText(
      {super.key,
      required this.data,
      required this.fontSize,
      this.color,
      this.fontWeight,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? AppColor.blackColor,
        fontFamily: 'Times New Roman',
      ),
      textAlign: textAlign ?? TextAlign.justify,
    );
  }
}
