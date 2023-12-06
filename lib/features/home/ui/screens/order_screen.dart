import 'package:flutter/material.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/core/widgets/custom_appBar.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/features/home/ui/widgets/order_widgets/order_information_widget.dart';
import 'package:laza/features/home/ui/widgets/order_widgets/order_products_widget.dart';
import 'package:laza/generated/assets.dart';
import '../widgets/order_widgets/address_and_payment_info_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          leadingImage: Assets.imagesArrowLeft, title: 'my order'),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const OrderProductsWidget(),
            const OrderProductsWidget(),
            const AddressAndPaymentInfoWidget(),
            const OrderInformation(),
            CustomButton(onTap: () {context.pushNamed(Routes.orderConfirmedScreen);}, text: 'Check Out',)
          ],
        ),
      ),
    );
  }
}


