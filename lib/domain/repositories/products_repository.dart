import 'package:ecommerce/domain/entities/product.dart';

abstract class ProductsRepository {
  Future<List<Product>> getAvailableProducts();
}
