import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';

void main() {
  runApp(const News_app());
}

// ignore: camel_case_types
class News_app extends StatelessWidget {
  const News_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
