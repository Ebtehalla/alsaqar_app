import 'package:alsagr_app/data_sources/news_api.dart';
import 'package:alsagr_app/models/news_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageHeadr extends StatefulWidget {
  const ImageHeadr({super.key});

  @override
  State<ImageHeadr> createState() => _ImageHeadrState();
}

class _ImageHeadrState extends State<ImageHeadr> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>?>(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          final news = snapshot.data;
          return CarouselSlider.builder(
            itemCount: news?.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              String currentImage = news?[index].imageUrl ?? "";
              return Image.network(
                news?[index].imageUrl ?? "",
                width: 900, // Set the desired width
                height: 400, // Set the desired height
                fit: BoxFit.contain,
                // errorBuilder: (context, error, stackTrace) {
                //   return Image.network(
                //       "https://alsaaqerclub.sa/wp-content/uploads/2022/12/-e1670162685443-128x128.png");
                // },
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
      future: getNews(),
    );
  }
}
