import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';
import 'package:laza/features/auth/auth_controller/auth_controller.dart';

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
           CustomTextFormFeild(
            title: 'user email',
            controller: controller.emailUserLogin,
             validator: (value) => value!.isEmpty ? 'Email cannot be blank':null,
          ),
           CustomTextFormFeild(
            title: 'password',
            controller: controller.passwordUserLogin,
             validator: (value) => value!.isEmpty ? 'password cannot be blank':null,
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
              if(_formKey.currentState!.validate()){
                controller.loginUser(controller.emailUserLogin.text.trim(), controller.passwordUserLogin.text.trim());
              }
            },
          ),
        ],
      ),
    );
  }
}
