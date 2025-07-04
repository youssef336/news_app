import 'package:flutter/material.dart';
import 'package:news_app/pages/Devolper_page.dart';

import 'package:news_app/widgets/Categores_ListView.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            const Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const DevoleperPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        // child: Column(
        //   children: [
        //     Categores_ListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: News_ListView())
        //   ],
        // ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Categores_ListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 26,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
