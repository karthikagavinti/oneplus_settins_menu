import 'package:flutter/material.dart';
import 'settings.dart';  // Import your Settings screen here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line to remove the debug banner
      home: Settings(),
    );
  }
}
