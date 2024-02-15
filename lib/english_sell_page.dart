import 'package:flutter/material.dart';
import 'vegetable_detail_page.dart'; // Import the page for displaying vegetable details

class EnglishSellPage extends StatelessWidget {
  // List of vegetables
  final List<String> vegetables = [
    'Tomato',
    'Cauliflower',
    'Brinjal',
    'Potato',
    'Pumpkin',
    'Coriander',
    'Spinach',
    'Mirchi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell Page'),
        backgroundColor: Colors.lightBlueAccent, // Change the color to match your desired app bar color
      ),
      body: ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vegetables[index]),
            onTap: () {
              // Navigate to the VegetableDetailPage with the selected vegetable
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VegetableDetailPage(vegetableName: vegetables[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
