

import 'package:dio/dio.dart';
import 'package:laza/core/end_point/end_point.dart';
import 'package:laza/features/home/data/models/products_model.dart';

class ApiData{

  Future<Product>  getDate()async{
    Product product;
    Response response = await Dio().get(allProducts);
    product =Product.fromJson(response.data);
    return product;
  }
}