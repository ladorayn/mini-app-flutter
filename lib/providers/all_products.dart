import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _allProduct = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Description Product ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get favProducts {
    return _allProduct.where((prod) => prod.isFavorite).toList();
  }

  List<Product> get allProducts => _allProduct;

  Product findById(productId) {
    return _allProduct.firstWhere((prod) => prod.id == productId);
  }
}
