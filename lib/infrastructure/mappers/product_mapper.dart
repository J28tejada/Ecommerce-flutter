import 'package:ecommerce/domain/entities/product.dart';
import 'package:ecommerce/infrastructure/models/demoStore/products_model.dart';

class ProductMapper {
  static Product demoStoreToEntity(ProductsModel demoStore) => Product(
    id: demoStore.id,
    title: demoStore.title,
    slug: demoStore.slug,
    price: demoStore.price,
    description: demoStore.description,
    images: demoStore.images,
    creationAt: demoStore.creationAt,
    updatedAt: demoStore.updatedAt,
  );
}
