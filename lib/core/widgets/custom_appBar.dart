import 'package:flutter/material.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/generated/assets.dart';

AppBar customAppBar({required String leadingImage,String title = ''}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Padding(
      padding:  EdgeInsets.all(8),
      child: GestureDetector(
        onTap:(){},
        child: CircleAvatar(
          backgroundColor: MyColor.grey,
          child: Image.asset(leadingImage),
        ),
      ),
    ),
    title: Text(title,style: TextStyles.font17BlackSemiBold),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          backgroundColor: MyColor.grey,
          child: Image.asset(Assets.imagesBag),
        ),
      ),
    ],
  );
}