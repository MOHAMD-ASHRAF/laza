import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/helpers/extensions.dart';
import 'package:laza/core/widgets/custom_button.dart';
import 'package:laza/generated/assets.dart';

import '../../../../core/theming/color/my_color.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/custom_textFormFeild.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding:  const EdgeInsets.all(8),
          child: GestureDetector(
            onTap:(){
              context.pop();
            },
            child: CircleAvatar(
              backgroundColor: MyColor.grey,
              child: Image.asset(Assets.imagesArrowLeft),
            ),
          ),
        ),
        title: Text('address',style: TextStyles.font17BlackSemiBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextFormFeild(title: 'name',),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    const Expanded(child: CustomTextFormFeild(title: 'Country',)),
                    SizedBox(width: 12.w,),
                    const Expanded(child: CustomTextFormFeild(title: 'City',)),
                  ],
                ),
              SizedBox(height: 18.h,),
              const CustomTextFormFeild(title: 'phone number',),
              SizedBox(height: 18.h,),
              const CustomTextFormFeild(title: 'Address',),
              SizedBox(height: 24.h,),
              Row(
                children: [
                  Text('Save as primary address',style: TextStyles.font17BlackSemiBold,),
                  const Spacer(),
                  Switch(
                    activeColor: Colors.green,
                      value: isSwitch, onChanged: (value){
                    setState(() {
                      isSwitch = value;
                    });
                  }),
                ],
              ),
              CustomButton(onTap: (){}, text: 'Save Address')
            ],
          ),
        ),
      ),
    );
  }
}
