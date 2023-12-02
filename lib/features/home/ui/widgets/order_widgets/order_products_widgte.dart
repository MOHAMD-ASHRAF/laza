
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/generated/assets.dart';

class OrderProductsWidget extends StatelessWidget {
  const OrderProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 120.h,
        decoration: BoxDecoration(
          color: MyColor.grey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const  EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: double.infinity,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      Assets.imagesModel,
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(width: 10.w,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Men\'s Tie-Dye T-Shirt Nike Sportswear',
                      style: TextStyles.font17BlackSemiBold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '\$45 (-\$4.00 Tax)',
                      style: TextStyles.font15GrayRegular,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.keyboard_arrow_down_outlined,color: MyColor.mainColor,),
                        ),
                        SizedBox(width: 18.w,),
                        Text('1',style: TextStyles.font17blackBold),
                        SizedBox(width: 18.w,),
                        const CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.keyboard_arrow_up_outlined,color: MyColor.mainColor,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: Icon(Icons.restore_from_trash,color: MyColor.mainColor,),
              )

            ],
          ),
        ),
      ),
    );
  }
}