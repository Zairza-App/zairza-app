import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: width * 0.55581395348,
              height: height * 0.17167381974,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff000000),
                    blurRadius: 0,
                    offset: Offset(4, 4),
                  )
                ],
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
                      const BorderRadius.only(topRight: Radius.circular(4)),
                  child: Image.asset(
                    'assets/images/HomeCard1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(8),
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
                      Text("20th Feb 2023", style: GlobalVariables.textBold_14),
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
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000),
                blurRadius: 0,
                offset: Offset(4, 4),
              )
            ],
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("HARDWARE",
                            style: GlobalVariables.textMedium_12.copyWith(
                                color: GlobalVariables.primaryColor,
                                height: 1)),
                        SizedBox(
                          width: width * 0.5390625,
                          child: Text("Internet of things (IoT) Workshop",
                              style: GlobalVariables.textMedium_16.copyWith(
                                  height: 1.35)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
