

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/assets.dart';
import '../../theming/text_style.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(color: Colors.white24,height: 1,),
        ),
        ListTile(
          onTap: (){},
          leading: SizedBox(
            width: 30.w,
            height: 30.h,
            child: Image.asset(Assets.imagesSun,color: Colors.white,),
          ),
          title: Text('home',style: TextStyles.font15WhiteRegular),
        ),
      ],
    );
  }
}