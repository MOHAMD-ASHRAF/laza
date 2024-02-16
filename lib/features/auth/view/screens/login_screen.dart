import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';
import 'package:laza/features/auth/view/widgets/login_widget.dart';
import 'package:laza/routes/app_pages.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome',
              style: TextStyles.font24BlackSemiBold,
            ),
            Text(
              'Please enter your data to continue',
              style: TextStyles.font15GrayRegular,
            ),
            SizedBox(
              height: 100.h,
            ),
            LoginWidget()
          ],
        ),
      ),
    );
  }
}
