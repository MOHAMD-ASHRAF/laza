import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';
import 'package:laza/features/auth/auth_controller/auth_controller.dart';

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
            validator: (value) => value!.isEmpty ? 'UserName cannot be blank':null,
          ),
          CustomTextFormFeild(
            controller: controller.email,
            title: 'Email Address',
            validator: (value) => value!.isEmpty ? 'Email cannot be blank':null,
          ),
          CustomTextFormFeild(
            controller: controller.password,
            title: 'password',
            validator: (value) => value!.isEmpty ? 'password cannot be blank':null,
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            width: 150.w,
            borderRadius: 25,
            text: 'Sing Up',
            onTap: () {
              if(_formKey.currentState!.validate()){
                controller.registerUser(controller.email.text.trim(), controller.password.text.trim());
              }
            },
          ),
        ],
      ),
    );
  }
}
