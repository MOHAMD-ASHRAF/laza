import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laza/core/widgets/custom_text.dart';

void customSnackBar(String title, Color color,{Duration? duration}){
  Get.snackbar(
      "", title,
      margin: const EdgeInsets.only(bottom: 70,right:32,left: 32),
      titleText: const SizedBox(),
       messageText: CustomText(text: title, fontSize: 16, color: Colors.white,),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor:color,
      duration: duration ?? const Duration(milliseconds: 3000),
      colorText: Colors.white
  );

}