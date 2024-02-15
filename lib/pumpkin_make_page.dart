import 'package:flutter/material.dart';

class PumpkinMakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Pumpkin Products'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'List of products that can be made from Pumpkin:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            buildProductList(['Pumpkin Pie', 'Pumpkin Soup', 'Roasted Pumpkin Seeds']),
          ],
        ),
      ),
    );
  }

  Widget buildProductList(List<String> products) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: products
          .map((product) => Text(
        '- $product',
        style: TextStyle(fontSize: 16),
      ))
          .toList(),
    );
  }
}
