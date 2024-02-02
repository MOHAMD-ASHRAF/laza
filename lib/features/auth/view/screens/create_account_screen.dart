import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/features/auth/auth_view_model/auth_controller.dart';
import 'package:laza/features/auth/view/widgets/login_with_platform_widget.dart';
import 'package:laza/features/home/view/screens/home_screen.dart';

class CreateAccountScreen extends GetView<AuthController> {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Let’s Get Started',
            style: TextStyles.font24BlackSemiBold,
          ),
          SizedBox(
            height: 200.h,
          ),
          const LoginWithPlatFormWidget(
            image: 'assets/images/facebook.png',
            text: 'FaceBook',
            color: MyColor.blue,
          ),
          SizedBox(
            height: 16.h,
          ),
           LoginWithPlatFormWidget(
            onTap: (){
            controller.signInWithGoogle();
            },
            image: 'assets/images/google.png',
            text: 'Google',
            color: MyColor.red,
          ),
          SizedBox(
            height: 16.h,
          ),
          const LoginWithPlatFormWidget(
            image: 'assets/images/twitter.png',
            text: 'Twitter',
            color: MyColor.babyBlue,
          ),
          SizedBox(
            height: 150.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyles.font15GrayRegular),
                TextSpan(
                    text: ' Sign Up',
                    style: TextStyles.font15GrayRegular
                        .copyWith(color: Colors.black)),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomButton(
            onTap: () {},
            text: 'Create an Account',
          )
        ],
      ),
    );
  }
}
