// ignore_for_file: file_names
import 'package:alsagr_app/components/drawer.dart';
import 'package:alsagr_app/components/network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data_sources/news_api.dart';

class NewsPage extends StatefulWidget {
  // دايما ودايماا استخدمي ستيت فل
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('الاخبار'),
        backgroundColor: const Color.fromARGB(255, 86, 45, 93),
        centerTitle: true,
        toolbarHeight: 60,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 242, 244, 246),
      body: FutureBuilder<List<DocumentSnapshot>>(
        future: getData("news"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var news = snapshot.data as List<DocumentSnapshot>;
            return ListView.separated(
              itemCount: news.length,
              padding: const EdgeInsets.all(20),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                var item = news[index].data() as Map<dynamic, dynamic>;
                Map<String, dynamic> map = Map.from(item);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppCashedImage(
                      imageUrl: map["img"],
                      fit: BoxFit.cover,
                      width: context.width,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      map["title"],
                    )
                  ],
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
        },
      ),
    );
  }
}
