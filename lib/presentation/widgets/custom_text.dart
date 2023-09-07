import 'package:ecs_flutter_assesment/constants/app_extensions.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize = 0.04,
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: context.width * fontSize,
        color: textColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
