import 'package:get/get.dart';
import 'package:laza/features/auth/auth_view_model/auth_controller.dart';

class AuthBinding extends Bindings{

  @override
  void dependencies() {
   Get.lazyPut(() => AuthController());
  }

}