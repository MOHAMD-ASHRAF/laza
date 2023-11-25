import 'package:flutter/material.dart';
import '../widgets/product_details_screen_widgets/product_details_screen_widgets.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             ProductImageWidget()
          ],
        ),
      )
    );
  }
}


