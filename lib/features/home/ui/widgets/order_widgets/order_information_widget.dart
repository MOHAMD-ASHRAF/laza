

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/text_style.dart';

class OrderInformation extends StatelessWidget {
  const OrderInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('OrderInfo',style: TextStyles.font17BlackSemiBold,),
          SizedBox(height: 12.h,),
          Row(
            children: [
              Text('Subtotal',style: TextStyles.font15GrayRegular,),
              const Spacer(),
              Text('110\$',style: TextStyles.font17blackBold,),
            ],
          ),
          SizedBox(height: 8.h,),
          Row(
            children: [
              Text('delivery Cost',style: TextStyles.font15GrayRegular,),
              const Spacer(),
              Text('10\$',style: TextStyles.font17blackBold,),
            ],
          ),
          SizedBox(height: 8.h,),
          Row(
            children: [
              Text('item',style: TextStyles.font15GrayRegular,),
              const Spacer(),
              Text('2',style: TextStyles.font17blackBold,),
            ],
          ),
          SizedBox(height: 8.h,),
          Row(
            children: [
              Text('total cost',style: TextStyles.font15GrayRegular,),
              const Spacer(),
              Text('120\$',style: TextStyles.font17blackBold.copyWith(color: Colors.green),),
            ],
          ),
        ],
      ),
    );
  }
}
