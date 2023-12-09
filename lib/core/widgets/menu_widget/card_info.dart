

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/text_style.dart';

import '../../theming/color/my_color.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key, required this.name, required this.image,
  });
  final String name,image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: MyColor.grey,
        backgroundImage: AssetImage(image),
      ),
      title: Text(name,style: TextStyles.font15WhiteRegular,overflow: TextOverflow.ellipsis,),
      subtitle: Text('Verified Profile',style: TextStyles.font15GrayRegular.copyWith(fontSize: 10),),
      trailing: Container(
        width: 66.w,
        height: 32.h,
        decoration: BoxDecoration(
          color: MyColor.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('3 order',style: TextStyles.font15WhiteRegular.copyWith(color: MyColor.mainColor))),
      ),
    );
  }
}