import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2)),
          width: width * 0.55813953488,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.17167381974,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    child: Image.asset('assets/images/blog_image.png',
                        fit: BoxFit.fill)),
              ),
              Container(
                width: width * 0.55813953488,
                decoration: const BoxDecoration(
                    border: BorderDirectional(top: BorderSide(width: 2))),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter Vs React Native',
                        style: GlobalVariables.textBold_14,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit xfdsqusn qdodndo uq2dhd',
                        style: GlobalVariables.textRegular_12,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(0),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                  // strokeAlign: BorderSide.strokeAlignOutside
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hardware", style: GlobalVariables.textBold_14),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
