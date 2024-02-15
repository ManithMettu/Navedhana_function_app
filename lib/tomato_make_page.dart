import 'package:flutter/material.dart';
import 'tomato_product_page.dart'; // Import the product page for Tomato

class TomatoMakePage extends StatelessWidget {
  final List<String> products = [
    'Pickle',
    'Juice',
    'Puree',
    'Ketchup',
    'Sauce',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Tomato Products'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'List of products that can be made from Tomato:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            buildProductList(context),
          ],
        ),
      ),
    );
  }

  Widget buildProductList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: products
          .map((product) => Column(
        children: [
          ElevatedButton(
            onPressed: () {
              navigateToProductPage(context, product);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlueAccent,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            ),
            child: Text(
              product,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20), // Add some spacing between buttons
        ],
      ))
          .toList(),
    );
  }

  void navigateToProductPage(BuildContext context, String product) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TomatoProductPage(productName: product)),
    );
  }
}
