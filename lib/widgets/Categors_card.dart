// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/Models/Categors_Model.dart';
import 'package:news_app/pages/category_view_page.dart';

class Categors_card extends StatelessWidget {
  const Categors_card({
    super.key,
    required this.category,
  });
  final CategorsModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return categoryView(category: category.categoryname);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              category.categoryname,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
