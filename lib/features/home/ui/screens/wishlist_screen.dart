import 'package:flutter/material.dart';
import 'package:laza/core/widgets/custom_appBar.dart';
import 'package:laza/generated/assets.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBarr(leadingImage: Assets.imagesArrowLeft,title: 'WishList'),
      body: const Center(
        child: Text('WishListScreen'),
      ),
    );
  }
}
