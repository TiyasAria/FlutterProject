import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_state_management/model/catalog_model.dart';
import 'package:simple_app_state_management/screens/cart.dart';
import 'package:simple_app_state_management/screens/catalog.dart';
import 'package:simple_app_state_management/utils/commons.dart';

import 'model/cart_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),
        // ignore: missing_required_param
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (BuildContext context) => CartModel(),
          update: (context, catalog, cart) {
            if(cart == null ) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/' : (context) => Mycatalog(),
          '/cart' : (context) => MyCart(),
        },
      ),
    );
  }
}


