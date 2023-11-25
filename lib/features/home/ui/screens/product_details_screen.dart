import 'package:flutter/material.dart';
import 'package:laza/features/home/ui/widgets/product_details_screen_widgets/product_images_and_size_widgets.dart';
import '../widgets/product_details_screen_widgets/product_Name_and_price_widget.dart';
import '../widgets/product_details_screen_widgets/product_details_screen_widgets.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Column(
          children: const[
             ProductImageWidget(),
             ProductNameAndPriceWidget(),
            ProductsImageAndSizeWidgets()
          ],
        ),
      )
    );
  }
}


