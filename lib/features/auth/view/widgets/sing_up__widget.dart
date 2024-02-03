import 'package:flutter/material.dart';
import 'package:laza/core/widgets/custom_textFormFeild.dart';

class SingUpWidget extends StatelessWidget {
  const SingUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          CustomTextFormFeild(
            title: 'UserName',
          ),
          CustomTextFormFeild(
            title: 'password',
          ),
          CustomTextFormFeild(
            title: 'Email Address',
          ),
        ],
      ),
    );
  }
}
