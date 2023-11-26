import 'package:flutter/material.dart';
import 'package:laza/features/home/ui/widgets/product_details_screen_widgets/product_images_and_size_widgets.dart';
import '../widgets/product_details_screen_widgets/description_reviews_price_widgets.dart';
import '../widgets/product_details_screen_widgets/product_Name_and_price_widget.dart';
import '../widgets/product_details_screen_widgets/product_details_screen_widgets.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               ProductImageWidget(),
               ProductNameAndPriceWidget(),
              ProductsImageAndSizeWidgets(),
              DescriptionReviewsPriceWidgets(),
            ],
          ),
        ),
      )
    );
  }
}


