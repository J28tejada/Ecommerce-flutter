import 'package:ecommerce/domain/datasources/products_datasource.dart';
import 'package:ecommerce/domain/entities/product.dart';
import 'package:ecommerce/domain/repositories/products_repository.dart';

class ProductRepositoryImpl extends ProductsRepository {
  final ProductsDatasource datasource;

  ProductRepositoryImpl(this.datasource);

  @override
  Future<List<Product>> getAvailableProducts() {
    return datasource.getAvailableProducts();
  }
}
