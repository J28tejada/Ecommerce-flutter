import 'package:dio/dio.dart';
import 'package:ecommerce/domain/datasources/products_datasource.dart';
import 'package:ecommerce/domain/entities/product.dart';
import 'package:ecommerce/infrastructure/mappers/product_mapper.dart';
import 'package:ecommerce/infrastructure/models/demoStore/products_model.dart';

class DemoStoreDatasource extends ProductsDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api.escuelajs.co/api/v1/products'),
  );

  @override
  Future<List<Product>> getAvailableProducts() async {
    final response = await dio.get('/');

    final List<dynamic> data = response.data;

    final List<Product> products =
        data
            .map(
              (item) =>
                  ProductMapper.demoStoreToEntity(ProductsModel.fromJson(item)),
            )
            .toList();

    return products;
  }
}
