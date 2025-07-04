// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/Models/Article_Model.dart';
import 'package:news_app/pages/WebViewScreen.dart';

class News_card extends StatelessWidget {
  const News_card({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to WebViewScreen when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(url: articleModel.url ?? ''),
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              articleModel.image ??
                  "https://www.shutterstock.com/image-vector/question-mark-icon-vector-illustration-600nw-545832988.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.Subtitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
