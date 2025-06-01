import 'package:ecommerce/infrastructure/models/demoStore/products_model.dart';

class Product {
  final int id;
  final String title;
  final String slug;
  final int price;
  final String description;
  final List<String> images;
  final DateTime creationAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.title,
    required this.slug,
    required this.price,
    required this.description,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
  });
}
