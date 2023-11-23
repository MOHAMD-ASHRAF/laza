


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/widgets/cutom_text.dart';
import 'package:laza/generated/assets.dart';

class NewArrivalWidget extends StatelessWidget {
  const NewArrivalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
           const Row(
            children: [
              CustomText(text: 'New Arrival', fontSize: 17, fontWeight: FontWeight.bold,),
              Spacer(),
              CustomText(text: 'View All', fontSize: 13,color: Colors.grey,),
            ],
          ),
          const SizedBox(height: 14,),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 35.0,
              maxHeight: 600,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 18, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
              ),

              itemCount: 8,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: MyColor.grey,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: const Image(image: AssetImage('assets/images/model.jpg'),fit:BoxFit.cover,width: double.infinity,))
                          ),
                          Positioned(
                            top: 14,
                              right: 14,
                              child: SvgPicture.asset(Assets.heartIcon)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const Text('brand name ',overflow: TextOverflow.ellipsis,maxLines: 2,),
                    const Text('\$99.9',overflow: TextOverflow.ellipsis,maxLines: 1,),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}