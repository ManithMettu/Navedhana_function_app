import 'package:flutter/material.dart';

class ValueAddedProcedurePage extends StatelessWidget {
  final String vegetableName;

  ValueAddedProcedurePage({required this.vegetableName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procedure for $vegetableName'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Procedure to make value-added products from $vegetableName:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              // Add the specific procedure for each vegetable here
              getProcedure(vegetableName),
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // Define procedures for each vegetable
  String getProcedure(String vegetable) {
    switch (vegetable) {
      case 'Tomato':
        return 'Procedure for making value-added products from Tomato.';
      case 'Cauliflower':
        return 'Procedure for making value-added products from Cauliflower.';
      case 'Pumpkin':
        return 'Procedure for making value-added products from Pumpkin.';
      default:
        return 'Procedure not available.';
    }
  }
}
