import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex_launches/providers/data_provider.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final _carouselController = CarouselController();

  @override
  void initState() {
    super.initState();

    context.read<DataProvider>().getRockets();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DataProvider>();

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: model.rockets.length,
          itemBuilder: (
            BuildContext context,
            int itemIndex,
            int pageViewIndex,
          ) {
            final rocket = model.rockets[itemIndex];

            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                rocket.flickrImages.first,
                width: 301,
                height: 194,
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 0.85,
            height: 194,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              final rockets = context.read<DataProvider>().rockets;
              final rocketName = rockets[index].rocketName;

              context
                  .read<DataProvider>()
                  .getDataOnIndexChanged(index, rocketName);
            },
          ),
        ),
        // dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: model.rockets.asMap().entries.map((entry) {
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
                  color: model.currentIndex == entry.key
                      ? Colors.white
                      : Colors.transparent,
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
