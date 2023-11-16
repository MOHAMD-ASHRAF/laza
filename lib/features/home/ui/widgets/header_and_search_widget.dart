

import 'package:flutter/material.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/widgets/cutom_text.dart';

class HeaderAndSearchWidget extends StatelessWidget {
  const HeaderAndSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(text: 'Hello', fontSize: 28,fontWeight: FontWeight.bold,),
        const CustomText(text: 'Welcome to laza', fontSize: 15,color: Colors.grey,),
        const SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: MyColor.mainColor, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(fontSize: 15,color: Colors.grey),
                  hintText: "Search...",
                  fillColor: MyColor.grey,

                ),
              ),
            ),
            SizedBox(width: 8,),
            Container(
              height: 64,
              width: 55,
              decoration: BoxDecoration(
                color:  MyColor.mainColor,
                borderRadius: BorderRadius.circular(10.0),
                //  border: Border.all(color: MyColor.mainColor)
              ),
              child: Image.asset('assets/images/Voice.png',),
            )
          ],
        )
      ],
    );
  }
}