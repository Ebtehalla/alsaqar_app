import 'package:alsagr_app/components/network_image.dart';
import 'package:alsagr_app/core/extensions/build_context.dart';
import 'package:alsagr_app/data_sources/news_api.dart';
import 'package:alsagr_app/models/news_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ImageHeadr extends StatefulWidget {
  const ImageHeadr({super.key});

  @override
  State<ImageHeadr> createState() => _ImageHeadrState();
}

class _ImageHeadrState extends State<ImageHeadr> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DocumentSnapshot>>(
      future: getData("news"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var news = snapshot.data as List<DocumentSnapshot>;
          return CarouselSlider.builder(
            itemCount: news.length,
            itemBuilder: (context, index, realIndex) {
              var item = news[index].data() as Map<dynamic, dynamic>;
              Map<String, dynamic> map = Map.from(item);
              return AppCashedImage(
                imageUrl: map["img"],
                fit: BoxFit.cover,
                width: context.width,
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
    );
  }
}
