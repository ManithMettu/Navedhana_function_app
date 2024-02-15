import 'package:flutter/material.dart';
import 'cauliflower_products_page.dart'; // Import the products page for Cauliflower

class CauliflowerMakePage extends StatelessWidget {
  final List<String> products = [
    'Cauliflower Chips',
    // Add more cauliflower products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Cauliflower Products'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'List of products that can be made from Cauliflower:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            buildProductList(context),
          ],
        ),
      ),
    );
  }

  Widget buildProductList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: products
          .map((product) => Column(
        children: [
          ElevatedButton(
            onPressed: () {
              navigateToProductPage(context, product);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            ),
            child: Text(
              product,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10), // Add some spacing between buttons
        ],
      ))
          .toList(),
    );
  }

  void navigateToProductPage(BuildContext context, String product) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CauliflowerProductsPage(productName: product)),
    );
  }
}
