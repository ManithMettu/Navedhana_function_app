import 'package:flutter/material.dart';

class TomatoProductPage extends StatelessWidget {
  final String productName;

  TomatoProductPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tomato $productName Page'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Details for making $productName from Tomato:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Add specific details for each product if needed
          ],
        ),
      ),
    );
  }
}
