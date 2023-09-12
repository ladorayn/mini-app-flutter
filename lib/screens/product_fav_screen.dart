import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

class ProductFavScreen extends StatelessWidget {
  static const routeName = '/product-fav';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Products'),
      ),
      body: ProductGrid(favGrid: true),
    );
  }
}
