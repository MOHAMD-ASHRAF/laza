

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';

import '../../../../../core/widgets/custom_textFormFeild.dart';


class HeaderAndSearchWidget extends StatelessWidget {
  const HeaderAndSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Hello', style: TextStyles.font24BlackSemiBold,),
           Text('Welcome to laza', style: TextStyles.font15GrayRegular,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: CustomTextFormFeild(hintTitle: 'Search...',prefixIcon: Icons.search,)),
              SizedBox(width: 8.w,),
              Container(
                height: 55.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color:  MyColor.mainColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/Voice.png',),
              )
            ],
          )
        ],
      ),
    );
  }
}