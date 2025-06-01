import 'package:ecommerce/infrastructure/datasources/demo_store_datasource.dart';
import 'package:ecommerce/infrastructure/repositories/product_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// This repository is immutable
final productRepositoryProvider = Provider((ref) {
  return ProductRepositoryImpl(DemoStoreDatasource());
});
