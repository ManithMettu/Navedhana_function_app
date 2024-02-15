import 'package:flutter/material.dart';

class CauliflowerProductsPage extends StatelessWidget {
  final String productName;

  CauliflowerProductsPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cauliflower $productName Page'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Details for making $productName from Cauliflower:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Add specific details for Cauliflower Chips or other cauliflower products if needed
          ],
        ),
      ),
    );
  }
}
