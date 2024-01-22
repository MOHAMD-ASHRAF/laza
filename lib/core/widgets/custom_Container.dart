

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.height, required this.child,  this.backGroundColor = MyColor.mainColor, this.width = double.infinity, this.paddingSymmetricHorizontal = 0,  this.paddingSymmetricVertical = 0});
  final double height;
  final Widget child;
  final Color backGroundColor;
  final double width;
  final double paddingSymmetricHorizontal;
  final double paddingSymmetricVertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingSymmetricHorizontal.w,vertical: paddingSymmetricVertical.h),
      decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(16)
      ),
      height: height,
      width: width,
      child: Center(child: child),
    );
  }
}
