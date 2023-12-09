import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/widgets/menu_widget/card_info.dart';
import 'package:laza/core/widgets/menu_widget/side_menu_tile.dart';

import '../../../generated/assets.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Container(
          width: 288.w,
          height: double.infinity,
          color: const Color(0xFF17203A),
          child: SafeArea(
            child: Column(
              children: [
                InfoCard(name: 'Mohamed ashraf', image: Assets.imagesModel,),
                SideMenuTile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




