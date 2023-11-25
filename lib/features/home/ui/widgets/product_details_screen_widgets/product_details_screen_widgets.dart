import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/color/my_color.dart';
import '../../../../../generated/assets.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350.h,
          width: double.infinity,
          color: MyColor.grey,
          child: Image.asset(
            Assets.imagesModel,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 24),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(Assets.imagesArrowLeft),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(Assets.imagesBag),
              )
            ],
          ),
        )
      ],
    );
  }
}
