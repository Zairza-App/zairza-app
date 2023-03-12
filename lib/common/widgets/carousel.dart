import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: CarouselSlider(
        items: GlobalVariables.carouselImages.map((i) {
          return Builder(
              builder: (BuildContext context) => Container(
                    width: 382,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          blurRadius: 0,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Expanded(
                      child: ClipRRect(
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                          height: 256,
                          width: 356,
                        ),
                      ),
                    ),
                  ));
        }).toList(),
        options: CarouselOptions(
          viewportFraction: 1,
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
