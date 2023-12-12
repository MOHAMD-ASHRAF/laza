

import 'package:dio/dio.dart';
import 'package:laza/core/end_point/end_point.dart';
import 'package:laza/features/home/data/models/products_model.dart';

class ApiData{

  Future<ProductModel>  getDate()async{
    ProductModel product;
    Response response = await Dio().get(allProducts);
    product =ProductModel.fromJson(response.data);
    return product;
  }
}