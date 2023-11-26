import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/generated/assets.dart';

class DescriptionReviewsPriceWidgets extends StatelessWidget {
  const DescriptionReviewsPriceWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        DescriptionWidgets(),
        ReviewsWidget(),
        PriceWidgets()
      ],
    );
  }
}

class PriceWidgets extends StatelessWidget {
  const PriceWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Price',style: TextStyles.font17BlackSemiBold,),
              Text('with VAT,Sd',style: TextStyles.font15GrayRegular.copyWith(fontSize: 12),),
            ],
          ),
          const Spacer(),
          Text('\$125',style: TextStyles.font17BlackSemiBold,),
        ],
      ),
    );
  }
}

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text('Reviews',style: TextStyles.font17BlackSemiBold,),
              const Spacer(),
              Text('97 review',style: TextStyles.font15GrayRegular.copyWith(color: MyColor.mainColor),),
            ],
          ),
            SizedBox(height: 8.h,),
            Row(
             children: [
               const CircleAvatar(
                 radius: 24,
                backgroundColor: MyColor.grey,
                backgroundImage: AssetImage(Assets.imagesModel,),
          ),
               SizedBox(width: 8.w,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('mohamed salah',style: TextStyles.font17BlackSemiBold.copyWith(fontWeight: FontWeight.normal),),
                   SizedBox(height: 7.h,),
                   Text('30 sep, 2020',style: TextStyles.font15GrayRegular.copyWith(fontSize: 12),),
                 ],
               ),
               const Spacer(),
               Row(
                 children: [
                   Text('4.8',style: TextStyles.font17BlackSemiBold,),
                   const Icon(Icons.star,color: Colors.yellow,),
                 ],
               ),


             ],
           ),
          SizedBox(height: 8.h,),
             Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',style: TextStyles.font15GrayRegular,)
        ],
      ),
    );
  }
}

class DescriptionWidgets extends StatelessWidget {
  const DescriptionWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description',style: TextStyles.font24BlackSemiBold,),
          SizedBox(height: 4.h,),
          Text('The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with',
            style: TextStyles.font15GrayRegular,maxLines: 3,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
