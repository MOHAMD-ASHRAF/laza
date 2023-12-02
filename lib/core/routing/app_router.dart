
import 'package:flutter/material.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/features/home/ui/screens/main_screen.dart';
import 'package:laza/features/home/ui/screens/order_confirmed_screen.dart';
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
