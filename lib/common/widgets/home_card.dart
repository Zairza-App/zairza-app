import 'package:flutter/material.dart';
import 'package:zairza_app/common/widgets/tags.dart';
import 'package:zairza_app/constants/global_variables.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (() {
        Navigator.pushNamed(context, '/home_card');
      }),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: width * 0.55581395348,
                height: height * 0.17167381974,
                decoration: BoxDecoration(
                  boxShadow: GlobalVariables.shadowEffect,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    // strokeAlign: BorderSide.strokeAlignInside
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 0.5),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(4)),
                    child: Image.asset(
                      'assets/images/HomeCard1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
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
                        Text("20th Feb 2023",
                            style: GlobalVariables.textBold_14),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: width * 0.55581395348,
            decoration: const BoxDecoration(
              boxShadow: GlobalVariables.shadowEffect,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: BorderDirectional(
                  top: BorderSide(width: 0),
                  bottom: BorderSide(width: 2),
                  start: BorderSide(width: 2),
                  end: BorderSide(width: 2)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("HARDWARE",
                    style: GlobalVariables.textMedium_12.copyWith(
                        color: GlobalVariables.primaryColor, height: 1)),
                SizedBox(
                  width: width * 0.5390625,
                  child: Text("Internet of things (IoT) Workshop",
                      style:
                          GlobalVariables.textMedium_16.copyWith(height: 1.35)),
                ),
                SizedBox(height: height * 0.00643776824),
                const Row(
                  children: [
                    Tags(tagName: 'hardware'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Tags(tagName: 'arduino'),
                    ),
                    Tags(tagName: '...'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
