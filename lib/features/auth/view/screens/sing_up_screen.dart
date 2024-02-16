import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/text_style.dart';
import 'package:laza/features/auth/view/widgets/sing_up_widget.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

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
              'Sing Up',
              style: TextStyles.font24BlackSemiBold,
            ),
            SizedBox(
              height: 100.h,
            ),
             SingUpWidget(),
          ],
        ),
      ),
    );
  }
}
