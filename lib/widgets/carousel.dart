import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spacex_launches/mock/images.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final _carouselController = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imgList,
          carouselController: _carouselController,
          options: CarouselOptions(
            viewportFraction: 0.85,
            height: 194,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        // dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _carouselController.animateToPage(entry.key),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 4.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _current == entry.key ? Colors.white : Colors.transparent,
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

final List<Widget> _imgList = images.map((i) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      i,
      width: 301,
      height: 194,
      fit: BoxFit.cover,
    ),
  );
}).toList();
