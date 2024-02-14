import 'package:get/get.dart';
import 'package:laza/features/auth/binding/auth_binding.dart';
import 'package:laza/features/auth/view/screens/create_account_screen.dart';
import 'package:laza/features/auth/view/screens/login_screen.dart';
import 'package:laza/features/auth/view/screens/sing_up_screen.dart';
import 'package:laza/features/home/view/screens/address_screen.dart';
import 'package:laza/features/home/view/screens/main_screen.dart';
import 'package:laza/features/home/view/screens/order_confirmed_screen.dart';
import 'package:laza/features/home/view/screens/order_screen.dart';
import 'package:laza/features/home/view/screens/payment_screen.dart';
import 'package:laza/features/home/view/screens/product_details_screen.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.CREATEACCOUNTSCREEN;

  static final routes = [

    GetPage(
        name: Routes.CREATEACCOUNTSCREEN,
        page: () => const CreateAccountScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.SINGUPSCREEN,
        page: () => const SingUpScreen(),
        binding: AuthBinding()
    ),
    GetPage(
        name: Routes.MAINSCREEN,
        page: () => const MainScreen(),

    ),
    GetPage(
        name: Routes.ORDERSCREEN,
        page: () => const OrderScreen(),
    ),
    GetPage(
        name: Routes.ORDERCONFIRMEDSCREEN,
        page: () => const OrderConfirmedScreen(),

    ),
    GetPage(
        name: Routes.ADDRESSSCREEN,
        page: () => const AddressScreen(),

    ),
    GetPage(
        name: Routes.PAYMENTSCREEN,
        page: () => const PaymentScreen(),
    ),
    GetPage(
      name: Routes.PRODUCTDETAILSSCREEN,
      page: () => const ProductDetailsScreen(),
    ),
    GetPage(
      name: Routes.LOGINSCREEN,
      page: () => const LoginScreen(),
    ),
  ];
}
