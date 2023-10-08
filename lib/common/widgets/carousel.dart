import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(children: [
      CarouselSlider(
        items: GlobalVariables.carouselImages.map((i) {
          return Builder(
              builder: (BuildContext context) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff000000),
                            blurRadius: 0,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ));
        }).toList(),
        options: CarouselOptions(
          viewportFraction: 0.9,
          aspectRatio: 191 / 100,
          height: height * 0.21459227467,
          autoPlay: true,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      DotsIndicator(
        decorator: const DotsDecorator(
          activeSize: Size.fromRadius(4),
          activeColor: Colors.black,
          color: Colors.black,
          size: Size.fromRadius(2)
        ),
        dotsCount: GlobalVariables.carouselImages.length,
        position: currentIndex,
      )
    ]);
  }
}
