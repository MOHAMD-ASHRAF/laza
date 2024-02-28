import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign textAlign;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign = TextAlign.center
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
      maxLines: 1,
    );
  }
}
