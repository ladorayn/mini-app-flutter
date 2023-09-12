import 'package:flutter/cupertino.dart';
import 'package:miniappist/widgets/product_item.dart';
import 'package:provider/provider.dart';

import '../providers/all_products.dart';

class ProductGrid extends StatelessWidget {
  final bool favGrid;

  const ProductGrid({this.favGrid = false});
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allProduct =
        (favGrid) ? productData.favProducts : productData.allProducts;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProduct.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: allProduct[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
