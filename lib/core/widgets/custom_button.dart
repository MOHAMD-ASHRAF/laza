

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,required this.onTap, required this.text,  this.width = double.infinity
  });
  final void Function() onTap;
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 55.h,

          decoration: BoxDecoration(
            color: MyColor.mainColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(child: Text(text,style: TextStyles.font17blackBold.copyWith(color: Colors.white),)),
        ),
      ),
    );
  }
}

