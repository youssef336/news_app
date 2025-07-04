// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';

class categoryView extends StatelessWidget {
  const categoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            )
          ],
        ),
      ),
    );
  }
}
