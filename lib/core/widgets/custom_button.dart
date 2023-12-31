

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,required this.onTap, required this.text
  });
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 55.h,
          color: MyColor.mainColor,
          child: Center(child: Text(text,style: TextStyles.font17blackBold.copyWith(color: Colors.white),)),
        ),
      ),
    );
  }
}

