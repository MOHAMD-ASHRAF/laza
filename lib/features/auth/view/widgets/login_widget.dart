import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';
import 'package:laza/features/auth/auth_controller/auth_controller.dart';
import 'package:laza/routes/app_pages.dart';

class LoginWidget extends StatelessWidget {
   LoginWidget({super.key});
  final controller  = Get.put(AuthController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomTextFormFeild(
            title: 'Username',
          ),
          const CustomTextFormFeild(
            title: 'password',
          ),
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'By connecting your account confirm that you agree with our Term and Condition',
              style: TextStyles.font15GrayRegular.copyWith(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomButton(
            borderRadius: 25,
            width: 150.w,
            text: 'Login',
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
