import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zairza_app/common/widgets/carousel.dart';
import 'package:zairza_app/common/widgets/custom_icon_button.dart';
import 'package:zairza_app/common/widgets/home_card.dart';

import '../constants/global_variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: height * 0.11451,
            flexibleSpace: Container(),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                Image.asset('assets/Logo.png',
                    height: height * 0.05245, width: width * 0.114583),
                SizedBox(width: width * 0.03125),
                RichText(
                  text: TextSpan(
                    text: 'Hello Buddy!!',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily:
                            GoogleFonts.spaceGrotesk().fontFamily.toString()),
                    children: <TextSpan>[
                      TextSpan(
                          text: '\nWelcome to Zairza',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: GoogleFonts.spaceGrotesk()
                                  .fontFamily
                                  .toString())),
                    ],
                  ),
                ),
                SizedBox(width: width * 0.1666666666666667),
                CustomIconButton(),
              ],
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
            child: Column(
              children: [
                CarouselImage(),
                SizedBox(height: height * 0.0286259541984733),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Events",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: width * 0.0208333333333333),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: width * 0.0104166666666667),
                        Container(
                          width: width * 0.0520833333333333,
                          height: height * 0.0238549618320611,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: height * 0.0095419847328244,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: HomeCard(),
                      );
                    },
                  ),
                ),
                // SizedBox(height: 8),
                Text("data"),
                // Expanded(
                // child: SafeArea(
                //   child: Stack(
                //     children: <Widget>[
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 24.0),
                //         child: Column(
                //           children: [
                //             Padding(
                //               padding:
                //                   const EdgeInsets.symmetric(vertical: 24.0),
                //               child: CarouselImage(),
                //             ),
                //             SizedBox(height: 24),
                //             Container(
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Text(
                //                     "Upcoming Events",
                //                     textAlign: TextAlign.justify,
                //                     style: TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.w700,
                //                     ),
                //                   ),
                //                   SizedBox(width: 8),
                //                   Row(
                //                     children: [
                //                       Text(
                //                         "See all",
                //                         style: TextStyle(
                //                           color: Colors.black,
                //                           fontSize: 14,
                //                           decoration: TextDecoration.underline,
                //                           fontWeight: FontWeight.w500,
                //                         ),
                //                       ),
                //                       SizedBox(width: 4),
                //                       Container(
                //                         width: 20,
                //                         height: 20,
                //                         child: Row(
                //                           mainAxisSize: MainAxisSize.min,
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.center,
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.center,
                //                           children: [
                //                             Container(
                //                               width: 20,
                //                               height: 20,
                //                               decoration: BoxDecoration(
                //                                 borderRadius:
                //                                     BorderRadius.circular(8),
                //                               ),
                //                               child: Icon(Icons.arrow_forward),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             SizedBox(
                //               height: 8,
                //             ),
                //             Expanded(
                //               child: ListView.builder(
                //                 scrollDirection: Axis.horizontal,
                //                 itemCount: 4,
                //                 itemBuilder: (BuildContext context, int index) {
                //                   return Padding(
                //                     padding: const EdgeInsets.only(right: 20),
                //                     child: HomeCard(),
                //                   );
                //                 },
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // )
              ],
            ),
          ),
        ));
  }
}
