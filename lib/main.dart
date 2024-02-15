import 'package:flutter/material.dart';
import 'language_selection.dart';
import 'english_page.dart';
import 'telugu_page.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LanguageSelectionPage(),
        debugShowCheckedModeBanner: false
    );
  }
}
