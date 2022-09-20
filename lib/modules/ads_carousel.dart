import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdsCasrousel extends StatefulWidget {
  const AdsCasrousel({super.key});

  @override
  State<AdsCasrousel> createState() => _AdsCasrouselState();
}

class _AdsCasrouselState extends State<AdsCasrousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset('assets/images/ads/ads1.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset('assets/images/ads/ads2.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset('assets/images/ads/ads3.png'),
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        disableCenter: true,
      ),
    );
  }
}
