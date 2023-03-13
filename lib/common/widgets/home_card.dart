import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  HomeCard({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
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
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: width * 0.6223958333333333,
                    height: height * 0.1908396946564885,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: width * 0.0026041666666667,
                      ),
                      color: const Color(0xffd9d9d9),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: width * 1.572916666666667,
                        height: height * 1.012643129770992,
                        child: Image.asset(
                          'assets/HomeCard1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
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
                      width: width * 0.0052083333333333,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "20th Feb 2023",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: width * 0.6328125,
          decoration: BoxDecoration(
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
            border: Border.all(
              color: Colors.black,
              width: width * 0.0052083333333333,
            ),
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
                        Text(
                          "HARDWARE",
                          style: TextStyle(
                            color: Color(0xffef7a6b),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.5390625,
                          child: Text(
                            "Internet of things (IoT) Workshop",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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
