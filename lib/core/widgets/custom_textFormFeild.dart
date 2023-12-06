import 'package:flutter/material.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/theming/text_style.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({super.key,this.title = '',  this.hintTitle = '', this.prefixIcon});
  final String title;
  final String hintTitle;
  final IconData? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyles.font17BlackSemiBold,),

        SizedBox(height: 8),

        TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColor.mainColor, width: 1.0),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon:  Icon(
              prefixIcon,
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            hintStyle: const TextStyle(fontSize: 15,color: Colors.grey),
            hintText: hintTitle,
            fillColor: MyColor.grey,
          ),
        ),
      ],
    );
  }
}
