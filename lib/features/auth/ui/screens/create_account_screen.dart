import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_Container.dart';
import 'package:laza/core/widgets/custom_button.dart';

class CreateAccountScreen extends StatelessWidget {
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
          const LoginWithWidget(image: 'assets/images/facebook.png', text: 'FaceBook', color: MyColor.blue,),
          SizedBox(height: 16.h,),
          const LoginWithWidget(image: 'assets/images/google.png', text: 'Google', color: MyColor.red,),
          SizedBox(height: 16.h,),
          const LoginWithWidget(image: 'assets/images/twitter.png', text: 'Twitter', color: MyColor.babyBlue,),
          SizedBox(
            height: 150.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyles.font15GrayRegular
                ),
                TextSpan(
                  text: ' Sign Up',
                  style: TextStyles.font15GrayRegular.copyWith(color: Colors.black)
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomButton(onTap: () {  }, text: 'Create an Account',)
        ],
      ),
    );
  }
}

class LoginWithWidget extends StatelessWidget {
  const LoginWithWidget({
    super.key, required this.image, required this.text, required this.color, this.onTap,
  });
  final String image;
  final String text;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: CustomContainer(
            height: 50,
            backGroundColor: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image,width: 25,height: 25,),
                SizedBox(width: 6.w,),
                Text(
                  text,
                  style: TextStyles.font15GrayRegular.copyWith(
                    color: Colors.white
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
