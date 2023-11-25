import 'package:flutter/material.dart';

import '../../../../../core/theming/text_style.dart';

class ProductNameAndPriceWidget extends StatelessWidget {
  const ProductNameAndPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Men\'s Printed Pullover Hoodie',style: TextStyles.font15GrayRegular,),
              Text('Nike Club Fleece',style: TextStyles.font24BlackSemiBold,),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price',style: TextStyles.font15GrayRegular,),
              Text('\$120',style: TextStyles.font24BlackSemiBold,),
            ],
          ),

        ],
      ),
    );
  }
}
