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
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 96,
          flexibleSpace: Container(),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Image.asset('assets/Logo.png', height: 44, width: 44),
              SizedBox(width: 12),
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
              SizedBox(width: 64),
              CustomIconButton(),
            ],
          )),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/Background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: CarouselImage(),
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Row(
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
                        SizedBox(width: 8),
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
                            SizedBox(width: 4),
                            Container(
                              width: 20,
                              height: 20,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(Icons.arrow_forward),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
