

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/generated/assets.dart';

class CountOfItemWidgets extends StatelessWidget {
  const CountOfItemWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Column(
            children: [
              Text('325 Items', style: TextStyles.font17BlackSemiBold,),
              Text('in wishList', style: TextStyles.font15GrayRegular,),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
            },
            child: Container(
              width: 70.w,
              height: 40.h ,
              decoration: BoxDecoration(
                color:  MyColor.grey,
                borderRadius: BorderRadius.circular(10.0),
                //  border: Border.all(color: MyColor.mainColor)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Expanded(flex:1,child: Image.asset(Assets.imagesEdit)),
                    SizedBox(width: 8.w,),
                    Expanded(flex:2,child: Text('Edit',style: TextStyles.font17BlackSemiBold,))
                  ],
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}