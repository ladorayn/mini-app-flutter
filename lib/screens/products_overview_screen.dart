import 'package:flutter/material.dart';
import 'package:miniappist/screens/product_fav_screen.dart';
import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mini App'),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ProductFavScreen.routeName,
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: Theme.of(context).accentColor,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
