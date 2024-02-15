import 'package:flutter/material.dart';
import 'english_page.dart';
import 'telugu_page.dart';

class LanguageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the EnglishPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnglishPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,  // Change the color to match your agriculture app
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Adjust padding for button size
              ),
              child: Text(
                'English',
                style: TextStyle(fontSize: 18),  // Adjust font size if needed
              ),
            ),
            SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the TeluguPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeluguPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,  // Change the color to match your agriculture app
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Adjust padding for button size
              ),
              child: Text(
                'తెలుగు',
                style: TextStyle(fontSize: 18),  // Adjust font size if needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
