import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: CarouselSlider(
        items: GlobalVariables.carouselImages.map((i) {
          return Builder(
              builder: (BuildContext context) => Container(
                    width: width * 0.99479166667,
                    height: height * 0.2385496183206107,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
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
                          height: height * 0.3053435114503817,
                          width: width * 0.9270833333333333,
                        ),
                      ),
                    ),
                  ));
        }).toList(),
        options: CarouselOptions(
          viewportFraction: 1,
          height: height * 0.2385496183206107,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
