class Product {
  final int id;
  final String name;
  final String description;
  final num price;
  final num discountPercentage;
  final num rating;
  final String brand;
  final String category;
  final String image;
  final List<String> moreImage;

  Product(
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

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
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
