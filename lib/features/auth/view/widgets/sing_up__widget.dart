import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';
import 'package:laza/features/auth/auth_controller/auth_controller.dart';
import 'package:laza/routes/app_pages.dart';

class SingUpWidget extends StatelessWidget {
   SingUpWidget({super.key});
  final controller  = Get.put(AuthController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormFeild(
            controller: controller.name,
            title: 'UserName',
          ),
          CustomTextFormFeild(
            controller: controller.email,
            title: 'Email Address',
          ),
          CustomTextFormFeild(
            controller: controller.password,
            title: 'password',
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            width: 150.w,
            text: 'Sing Up',
            onTap: () {
              Get.toNamed(Routes.MAINSCREEN);
              // if(_formKey.currentState!.validate()){
              //   controller.registerUser(controller.email.text.trim(), controller.password.text.trim());
              // }
            },
          ),
        ],
      ),
    );
  }
}
