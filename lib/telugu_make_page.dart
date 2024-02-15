import 'package:flutter/material.dart';

class TeluguMakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('తయారీ పేజీ'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text(
          'హలో, వరగాలు! ఇది తయారీ పేజీ.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
