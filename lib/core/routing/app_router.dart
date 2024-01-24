
import 'package:flutter/material.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/features/auth/ui/screens/create_account_screen.dart';
import 'package:laza/features/home/ui/screens/address_screen.dart';
import 'package:laza/features/home/ui/screens/main_screen.dart';
import 'package:laza/features/home/ui/screens/order_confirmed_screen.dart';
import 'package:laza/features/home/ui/screens/order_screen.dart';
import 'package:laza/features/home/ui/screens/payment_screen.dart';
import 'package:laza/features/home/ui/screens/product_details_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
     // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.productDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.orderConfirmedScreen:
        return MaterialPageRoute(builder: (_) => const OrderConfirmedScreen());
      case Routes.orderScreen:
        return MaterialPageRoute(builder: (_) => const OrderScreen());
      case Routes.addressScreen:
        return MaterialPageRoute(builder: (_) => const AddressScreen());
      case Routes.paymentScreen:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case Routes.createAccountScreen:
        return MaterialPageRoute(builder: (_) => const CreateAccountScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                )
        );
    }
  }
}
