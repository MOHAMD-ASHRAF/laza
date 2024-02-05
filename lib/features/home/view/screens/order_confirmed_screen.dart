import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/routes/app_pages.dart';

import '../../../../generated/assets.dart';


class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
             child: Image.asset(Assets.imagesMobileConform,fit: BoxFit.cover,),
           ),
            Text('Order Confirmed!',style: TextStyles.font24BlackSemiBold,),
            SizedBox(height:12.h,),
            Text('Your order has been confirmed, we will send you confirmation email shortly',style: TextStyles.font15GrayRegular,),
            SizedBox(height:50.h,),
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.ORDERSCREEN);
              },
              child: Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  color: MyColor.grey,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(child: Text('Go to order',style: TextStyles.font17BlackSemiBold,)),
              ),
            ),
            SizedBox(height:28.h,),
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.MAINSCREEN);
              },
              child: Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  color: MyColor.mainColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(child: Text('Continue Shopping',style: TextStyles.font17BlackSemiBold.copyWith(color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
