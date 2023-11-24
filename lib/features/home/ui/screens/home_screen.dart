import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/features/home/ui/widgets/chose_brand_widget.dart';
import 'package:laza/features/home/ui/widgets/header_and_search_widget.dart';
import 'package:laza/features/home/ui/widgets/new_arrival_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: MyColor.grey,
            child: Image.asset('assets/images/menu.png'),
          ),
        ),
        title: Text('Home',style: TextStyles.font17BlackSemiBold),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: MyColor.grey,
              child: Image.asset('assets/images/Bag.png'),
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




