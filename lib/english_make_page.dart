import 'package:flutter/material.dart';
import 'tomato_make_page.dart';
import 'cauliflower_make_page.dart';
import 'pumpkin_make_page.dart';  // Import the new page

class EnglishMakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Page'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TomatoMakePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              child: Text(
                'Tomato',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CauliflowerMakePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              child: Text(
                'Cauliflower',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PumpkinMakePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              child: Text(
                'Pumpkin',
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Similar buttons for Broccoli, Eggplant, Spinach...
            // Copy and modify the above code for other vegetables
          ],
        ),
      ),
    );
  }
}
