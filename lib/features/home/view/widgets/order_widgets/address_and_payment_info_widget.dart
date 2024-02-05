import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/routes/app_pages.dart';

import '../../../../../generated/assets.dart';

class AddressAndPaymentInfoWidget extends StatelessWidget {
  const AddressAndPaymentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ItemBuilder(
            describe: 'Delivery Address',
            image: Assets.imagesLocation,
            title: 'Egypt, Cairo',
            subTitle: 'madinty',
            onTap: () {
              Get.toNamed(Routes.ADDRESSSCREEN);
            },
          ),
          SizedBox(
            height: 24.h,
          ),
          ItemBuilder(
            describe: 'Payment Method',
            image: Assets.imagesVisa,
            title: 'Visa Classic',
            subTitle: '**** 7690',
            onTap: () {
              Get.toNamed(Routes.PAYMENTSCREEN);
            },
          ),
        ],
      ),
    );
  }
}

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    super.key,
    required this.describe,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final String describe;
  final String image;
  final String title;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                describe,
                style: TextStyles.font17BlackSemiBold,
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: MyColor.grey,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.font17BlackSemiBold
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  subTitle,
                  style: TextStyles.font15GrayRegular.copyWith(fontSize: 12),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 26,
            ),
          ],
        ),
      ],
    );
  }
}
