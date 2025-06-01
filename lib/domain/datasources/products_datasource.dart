import 'package:ecommerce/domain/entities/product.dart';

abstract class ProductsDatasource {
  Future<List<Product>> getAvailableProducts();
}
