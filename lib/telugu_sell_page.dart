import 'package:flutter/material.dart';
import 'telugu_vegetable_detail_page.dart'; // Import the page for displaying vegetable details

class TeluguSellPage extends StatelessWidget {
  // List of vegetables
  final List<String> vegetables = [
    'టమాట',
    'కాలీఫ్లవర్',
    'వంకాయ',
    'ఆలుగడ్డ',
    'గుమ్మడికాయ',
    'కొత్తిమీర',
    'పాలకూర',
    'మిర్చి',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('అమ్మకాయ వివరాలు'),
        backgroundColor: Colors.lightBlueAccent, // Change the color to match your desired app bar color
      ),
      body: ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vegetables[index]),
            onTap: () {
              // Navigate to the TeluguVegetableDetailPage with the selected vegetable
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TeluguVegetableDetailPage(vegetableName: vegetables[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
