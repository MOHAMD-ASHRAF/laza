import 'package:get/get.dart';
import 'package:laza/features/auth/auth_controller/auth_controller.dart';


class AuthBinding extends Bindings{

  @override
  void dependencies() {
   Get.put(() => AuthController());
  }

}