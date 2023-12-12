import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/features/home/logic/laza_cubit.dart';
import 'package:laza/generated/assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          Row(
            children: [
              Text('New Arrival', style: TextStyles.font17blackBold),
              const Spacer(),
              Text('View All',
                  style:
                      TextStyles.font15GrayRegular.copyWith(fontSize: 12.sp)),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          BlocConsumer<LazaCubit, LazaState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return ConstrainedBox(
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
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context
                                      .pushNamed(Routes.productDetailsScreen);
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: MyColor.grey,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: const Image(
                                          image: AssetImage(Assets.imagesModel),
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ))),
                              ),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: MyColor.grey,
                                      child: SvgPicture.asset(
                                          Assets.svgHeartIcon))),
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
              );
            },
          )
        ],
      ),
    );
  }
}
