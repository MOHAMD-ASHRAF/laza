import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/features/home/ui/widgets/chose_brand_widget.dart';
import 'package:laza/features/home/ui/widgets/header_and_search_widget.dart';
import 'package:laza/features/home/ui/widgets/new_arrival_widget.dart';
import 'package:laza/generated/assets.dart';

import '../../../../core/widgets/custom_appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarr(leadingImage: Assets.imagesMenu,title: 'Home'),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const HeaderAndSearchWidget(),
            SizedBox(height: 8.h,),
            const ChooseBrandWidget(),
            SizedBox(height: 18.h,),
             const NewArrivalWidget()
          ],
        ),
      )
    );
  }
}
