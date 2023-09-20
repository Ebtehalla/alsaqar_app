import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageHeadr extends StatefulWidget {
  const ImageHeadr({super.key});

  @override
  State<ImageHeadr> createState() => _ImageHeadrState();
}

class _ImageHeadrState extends State<ImageHeadr> {
  List<String> images = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        String currentImage = images[index];
        return Image.asset(
          currentImage,
          width: 900, // Set the desired width
          height: 400, // Set the desired height
        );
      },
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 6),
      ),
    );
  }
}
