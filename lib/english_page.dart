import 'package:flutter/material.dart';
import 'english_sell_page.dart';
import 'english_buy_page.dart';
import 'english_make_page.dart';

class EnglishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English'),
        backgroundColor: Colors.lightBlueAccent,  // Change the color to match your desired app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the EnglishSellPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnglishSellPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,  // Change the color to match your desired button color
                padding: EdgeInsets.symmetric(horizontal: 93, vertical: 22), // Adjust padding for button size
              ),
              child: Text(
                'Sell',
                style: TextStyle(fontSize: 20),  // Adjust font size if needed
              ),
            ),
            SizedBox(height: 40), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the EnglishBuyPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnglishBuyPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,  // Change the color to match your desired button color
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20), // Adjust padding for button size
              ),
              child: Text(
                'Buy',
                style: TextStyle(fontSize: 20),  // Adjust font size if needed
              ),
            ),
            SizedBox(height: 40), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the EnglishMakePage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnglishMakePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,  // Change the color to match your desired button color
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20), // Adjust padding for button size
              ),
              child: Text(
                'Make',
                style: TextStyle(fontSize: 20),  // Adjust font size if needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
