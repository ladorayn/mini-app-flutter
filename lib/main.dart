import 'package:flutter/material.dart';
import 'package:miniappist/providers/all_products.dart';
import 'package:miniappist/screens/product_fav_screen.dart';
import 'package:provider/provider.dart';

import 'screens/products_overview_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mini App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.greenAccent,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          ProductFavScreen.routeName: (ctx) => ProductFavScreen(),
        },
      ),
    );
  }
}
