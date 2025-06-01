import 'package:ecommerce/domain/entities/product.dart';
import 'package:ecommerce/presentations/providers/products/products_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final availableProductsProvider =
    StateNotifierProvider<ProductsNotifier, List<Product>>((ref) {
      final repository = ref.watch(productRepositoryProvider);
      return ProductsNotifier(repository);
    });

class ProductsNotifier extends StateNotifier<List<Product>> {
  final dynamic repository;

  ProductsNotifier(this.repository) : super([]);

  Future<void> loadProducts() async {
    final products = await repository.getAvailableProducts();
    state = products;
  }
}
