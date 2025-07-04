// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

class DevoleperPage extends StatelessWidget {
  const DevoleperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Devoleper",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff49332A),
      ),
      backgroundColor: const Color(0xffFFF4D9),
      body: Column(
        children: [
          Row(
            children: [
              const Spacer(
                flex: 1,
              ),
              Container(
                height: 260,
                width: 260,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assets/Devoleper/youssef.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
          const Text(
            "Beginner Devoleper Flutter",
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 32,
          ),
          const Row(
            children: [
              Text(
                "Languages :",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              Language_Contaner(image: "assets/Devoleper/javascript.jpg"),
              const Spacer(
                flex: 1,
              ),
              Language_Contaner(image: "assets/Devoleper/Html.jpg"),
              const Spacer(
                flex: 1,
              ),
              Language_Contaner(image: "assets/Devoleper/css.jpg"),
              const Spacer(
                flex: 1,
              ),
              Language_Contaner(image: "assets/Devoleper/C++.jpg"),
              const Spacer(
                flex: 1,
              ),
              Language_Contaner(image: "assets/Devoleper/java.jpg"),
              const Spacer(
                flex: 1,
              ),
              Language_Contaner(image: "assets/Devoleper/Flutter.jpg"),
              const Spacer(
                flex: 1,
              ),
              Language_Contaner(image: "assets/Devoleper/Dart.jpg"),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Language_Contaner extends StatelessWidget {
  Language_Contaner({super.key, required this.image});
  String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFF4D9),
      width: 50,
      height: 40,
      child: Image.asset(
        image!,
        fit: BoxFit.cover,
      ),
    );
  }
}
