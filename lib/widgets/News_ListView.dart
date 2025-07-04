// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_Model.dart';

import 'package:news_app/widgets/News_card.dart';

class News_ListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const News_ListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: News_card(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
