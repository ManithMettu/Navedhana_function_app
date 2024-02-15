import 'package:flutter/material.dart';

class EnglishBuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Page'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text(
          'Hello, world! This is the Buy Page.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
