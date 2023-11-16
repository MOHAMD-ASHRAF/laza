

import 'package:flutter/material.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/core/widgets/cutom_text.dart';
import 'package:laza/features/home/data/models/brands_model.dart';

class ChooseBrandWidget extends StatefulWidget {
   ChooseBrandWidget({
    super.key,
  });

  @override
  State<ChooseBrandWidget> createState() => _ChooseBrandWidgetState();
}

class _ChooseBrandWidgetState extends State<ChooseBrandWidget> {


  List<BrandsModel> dummyData = [
    BrandsModel(
      name: 'Adidas',
      image: 'assets/images/adidas.jpg',
    ),
    BrandsModel(
      name: 'Nike',
      image: 'assets/images/nike.png',
    ),
    BrandsModel(
      name: 'Fila',
      image: 'assets/images/Fila.jpg',
    ),
    BrandsModel(
      name: 'puma',
      image: 'assets/images/puma.png',
    ),
    BrandsModel(
      name: 'gucci',
      image: 'assets/images/gucci.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            CustomText(text: 'Choose Brand', fontSize: 17, fontWeight: FontWeight.bold,),
            Spacer(),
            CustomText(text: 'View All', fontSize: 13,color: Colors.grey,),
          ],
        ),
        const SizedBox(height: 18,),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 35.0,
            maxHeight: 50.0,
          ),
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount:  dummyData.length,
            itemBuilder: (context,index){
              return ListViewItem(dummyData: dummyData, index: index,);
            }, separatorBuilder: (BuildContext context, int index) {
            return
              const SizedBox(width: 8,);
          },),
        )
      ],
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.dummyData,
    required this.index
  });

  final List<BrandsModel> dummyData;
  final int index;

  @override
  Widget build(BuildContext context,) {
    return Container(
      width: 115,height: 50,
      decoration: BoxDecoration(
        color:  MyColor.grey,
        borderRadius: BorderRadius.circular(10.0),
        //  border: Border.all(color: MyColor.mainColor)
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(dummyData[index].image),
            ),
            const Spacer(),
             CustomText(text: dummyData[index].name, fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),
          ],
        ),
      ),
    );
  }
}