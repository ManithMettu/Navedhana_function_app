import 'package:flutter/material.dart';

class TeluguBuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ఖరీదీ పేజీ'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text(
          'హలో, వరగాలు! ఇది ఖరీదీ పేజీ.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
