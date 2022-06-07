import 'package:flutter/material.dart';
import 'package:listing_products_ui/ui/products_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(itemHeight.toString())));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsPage(),
    );
  }
}