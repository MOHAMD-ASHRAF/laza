// class DataProductModel {
//   final List<ProductModel> data;
//   final int limit;
//   final int total;
//   final int skip;
//   DataProductModel({required this.limit, required this.total, required this.skip, required this.data});
//   factory DataProductModel.fromJson(Map<String, dynamic> json) {
//     return DataProductModel(
//       data: List<ProductModel>.from(json['data'].map((e) => ProductModel.fromJson(e))),
//       limit: json['limit'],
//       total: json['total'],
//       skip: json['skip'],
//     );
//   }
// }


class ProductModel {
  final num id;
  final String name;
  final String description;
  final num price;
  final num discountPercentage;
  final num rating;
  final String brand;
  final String category;
  final String image;
  final List<String> moreImage;

  ProductModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.brand,
      required this.category,
      required this.image,
      required this.moreImage});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        name: json['title'],
        description: json['description'],
        price: json['price'],
        discountPercentage: json['discountPercentage'],
        rating: json['rating'],
        brand: json['brand'],
        category: json['category'],
        image: json['thumbnail'],
        moreImage: json['images'].cast<String>(),
    );
  }
}
