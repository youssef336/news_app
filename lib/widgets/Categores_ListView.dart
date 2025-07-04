// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/Models/Categors_Model.dart';
import 'package:news_app/widgets/Categors_card.dart';

class Categores_ListView extends StatelessWidget {
  const Categores_ListView({
    super.key,
  });
  final List<CategorsModel> categores = const [
    CategorsModel(image: "assets/business.jpg", categoryname: "Business"),
    CategorsModel(
        image: "assets/entertaiment.avif", categoryname: "Entertainment"),
    CategorsModel(image: "assets/health.avif", categoryname: "Health"),
    CategorsModel(image: "assets/science.avif", categoryname: "science"),
    CategorsModel(image: "assets/sports.jpg", categoryname: "Sports"),
    CategorsModel(image: "assets/technology.jpeg", categoryname: "Technology"),
    CategorsModel(image: "assets/general.jpg", categoryname: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categores.length,
        itemBuilder: (BuildContext context, int index) {
          return Categors_card(
            category: categores[index],
          );
        },
      ),
    );
  }
}
