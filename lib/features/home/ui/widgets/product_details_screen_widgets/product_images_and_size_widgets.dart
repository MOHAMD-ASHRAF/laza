
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/generated/assets.dart';

import '../../../../../core/theming/text_style.dart';

class ProductsImageAndSizeWidgets extends StatelessWidget {
  const ProductsImageAndSizeWidgets({super.key});



  @override
  Widget build(BuildContext context) {
    List<String> sizeOfProduct = [
      'S','M','L','XL','2XL'
    ];
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 80,
            maxHeight: 80,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context,index) {
              return const ItemBuilder();
            }, separatorBuilder: (BuildContext context, int index) {
            return
              SizedBox(width: 8.w,);
          },),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 4),
              child: Row(
                children: [
                  Text('Size',style: TextStyles.font24BlackSemiBold,),
                  const Spacer(),
                  Text('Size Guide',style: TextStyles.font15GrayRegular,),
                ],
              ),
            ),

            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 40,
                maxHeight: 60,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context,index) {
                  return Container(
                      width: 60.w,height: 60.h,
                      decoration: BoxDecoration(
                        color:  MyColor.grey,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(sizeOfProduct[index],style: TextStyles.font17BlackSemiBold,)
                      ));
                }, separatorBuilder: (BuildContext context, int index) {
                return
                  SizedBox(width: 8.w,);
              },),
            ),
            
          ],
        )
      ],
    );
  }
}

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,height: 80.h,
      decoration: BoxDecoration(
        color:  MyColor.grey,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Image.asset(Assets.imagesJacket),
      ),
    );
  }
}
