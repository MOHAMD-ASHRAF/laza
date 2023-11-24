

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_text.dart';

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
           Text('Hello', style: TextStyles.font28BlackSemiBold,),
           Text('Welcome to laza', style: TextStyles.font15GrayRegular,),
           SizedBox(height: 20.h,),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyColor.mainColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(fontSize: 15,color: Colors.grey),
                    hintText: "Search...",
                    fillColor: MyColor.grey,

                  ),
                ),
              ),
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