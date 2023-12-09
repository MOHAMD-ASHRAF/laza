import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/features/home/ui/widgets/home_screen_widgets/chose_brand_widget.dart';
import 'package:laza/features/home/ui/widgets/home_screen_widgets/header_and_search_widget.dart';
import 'package:laza/features/home/ui/widgets/home_screen_widgets/new_arrival_widget.dart';
import 'package:laza/generated/assets.dart';

import '../../../../core/theming/color/my_color.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/menu_widget/side_menu.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding:  const EdgeInsets.all(8),
          child: GestureDetector(
            onTap:(){
              //context.pop();
            },
            child: CircleAvatar(
              backgroundColor: MyColor.grey,
              child: Image.asset(Assets.imagesMenu),
            ),
          ),
        ),
        title: Text('Home',style: TextStyles.font17BlackSemiBold),
        centerTitle: true,
        actions: [
          Padding(
            padding:  const EdgeInsets.all(8),
            child: GestureDetector(
              onTap:(){
                context.pop();
              },
              child: CircleAvatar(
                backgroundColor: MyColor.grey,
                child: Image.asset(Assets.imagesBag),
              ),
            ),
          ),
        ],
      ),
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
