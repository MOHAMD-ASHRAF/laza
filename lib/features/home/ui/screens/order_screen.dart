import 'package:flutter/material.dart';

import 'package:laza/core/widgets/custom_appBar.dart';
import 'package:laza/features/home/ui/widgets/order_widgets/order_products_widgte.dart';
import 'package:laza/generated/assets.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarr(
          leadingImage: Assets.imagesArrowLeft, title: 'my order'),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            OrderProductsWidget()
          ],
        ),
      ),
    );
  }
}


