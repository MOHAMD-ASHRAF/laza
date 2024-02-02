

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_Container.dart';

class LoginWithPlatFormWidget extends StatelessWidget {
  const LoginWithPlatFormWidget({
    super.key, required this.image, required this.text, required this.color, this.onTap,
  });
  final String image;
  final String text;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: CustomContainer(
            height: 50,
            backGroundColor: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image,width: 25,height: 25,),
                SizedBox(width: 6.w,),
                Text(
                  text,
                  style: TextStyles.font15GrayRegular.copyWith(
                      color: Colors.white
                  ),
                ),
              ],
            )),
      ),
    );
  }
}