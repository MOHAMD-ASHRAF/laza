import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';
import 'package:laza/generated/assets.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Padding(
      padding:  const EdgeInsets.all(8),
      child: GestureDetector(
        onTap:(){
          context.pop();
        },
        child: CircleAvatar(
          backgroundColor: MyColor.grey,
          child: Image.asset(Assets.imagesArrowLeft),
        ),
      ),
    ),
    title: Text('PAyment',style: TextStyles.font17BlackSemiBold),
    centerTitle: true,
  ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300.w,
              height: 185.h,
              child: Image.asset(Assets.imagesVisaCard),
            ),
            SizedBox(height: 18.h,),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  border:  Border.all(
                    color:  MyColor.mainColor,
                    width: 2
                  ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text('Add new card',style: TextStyles.font17BlackSemiBold.copyWith(color:  MyColor.mainColor)),
            )
            ),
            SizedBox(height: 25.h,),
            CustomTextFormFeild(title: 'Card Owner',),
            SizedBox(height: 18.h,),
            CustomTextFormFeild(title: 'Card Number',),
            SizedBox(height: 18.h,),
            Row(
              children: [
                const Expanded(child: CustomTextFormFeild(title: 'EXP',)),
                SizedBox(width: 18.w,),
                const Expanded(child: CustomTextFormFeild(title: 'CVV',)),
              ],

            ),
            SizedBox(height: 25.h,),
            CustomButton(onTap: (){}, text: 'Save Card')
          ],
        ),
      ),
    );
  }
}
