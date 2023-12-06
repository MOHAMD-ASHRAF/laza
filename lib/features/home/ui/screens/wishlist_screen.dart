import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/widgets/custom_appBar.dart';
import 'package:laza/features/home/ui/widgets/wishlist_screen_widgets/count_of_item_widgets.dart';
import 'package:laza/generated/assets.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(leadingImage: Assets.imagesArrowLeft,title: 'WishList'),
      body: Column(
        children: [
          CountOfItemWidgets(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 35.0,
                maxHeight: 600,
              ),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.65,
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 18, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                itemCount: 3,
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
                                    child: const Image(
                                      image:
                                      AssetImage('assets/images/model.jpg'),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ))),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: MyColor.grey,
                                    child: SvgPicture.asset(Assets.svgHeartIcon))),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'brand name ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const Text(
                        '\$99.9',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}


