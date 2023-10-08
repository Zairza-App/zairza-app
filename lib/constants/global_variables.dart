import 'package:flutter/material.dart';

String uri = 'http://192.168.60.106:3000';
// String uri = 'https://some-mobileapp.herokuapp.com';

class Keys {
  static final messangerKey = GlobalKey<ScaffoldMessengerState>();
}

class GlobalVariables {
  // COLORS

  static const primaryColor = Color(0xffFFC700);
  static const secondaryColor = Color(0xff23A094);
  static const backgroundColor = Color(0xffE8F1D7);
  static const appbarColor = Color(0xffFEFFFF);

  static var selectedNavBarColor = Colors.cyan[800];
  static const unselectedNavBarColor = Colors.black87;

  //Images
  static const List<String> carouselImages = [
    'assets/images/Carousel 4.png',
    'assets/images/Carousel 5.png',
    'assets/images/Carousel 6.png',
  ];

  //textstyles
  //TEXT REGULAR 12
  static const textRegular_12 = TextStyle(
      fontFamily: 'Space_Grotesk',
      fontSize: 12,
      letterSpacing: 0.2,
      height: 18);
  //TEXT MEDIUM 12
  static const textMedium_12 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 12,
    letterSpacing: 0.2,
    height: 18,
    fontWeight: FontWeight.w700,
  );
  //TEXT BOLD 12
  static const textBold_12 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 12,
    letterSpacing: 0.2,
    height: 18,
    fontWeight: FontWeight.w900,
  );
  //TEXT REGULAR 14
  static const textRegular_14 = TextStyle(
      fontFamily: 'Space_Grotesk',
      fontSize: 14,
      letterSpacing: 0.2,
      height: 22);
  //TEXT MEDIUM 14
  static const textMedium_14 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 14,
    letterSpacing: 0.2,
    height: 22,
    fontWeight: FontWeight.w700,
  );
  //TEXT BOLD 14
  static const textBold_14 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 14,
    letterSpacing: 0.2,
    height: 22,
    fontWeight: FontWeight.w900,
  );
  //TEXT REGULAR 16
  static const textRegular_16 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 16,
    letterSpacing: 0.2,
    height: 24
  );
  //TEXT MEDIUM 16
  static const textMedium_16 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 16,
    letterSpacing: 0.2,
    height: 24,
    fontWeight: FontWeight.w700,
  );
  //TEXT BOLD 16
  static const textBold_16 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 16,
    letterSpacing: 0.2,
    height: 24,
    fontWeight: FontWeight.w900,
  );
  //TEXT REGULAR 18
  static const textRegular_18 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 18,
    letterSpacing: 0.2,
    height: 28
  );
  //TEXT MEDIUM 18
  static const textMedium_18 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 18,
    letterSpacing: 0.2,
    height: 28,
    fontWeight: FontWeight.w700,
  );
  //TEXT BOLD 18
  static const textBold_18 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 18,
    letterSpacing: 0.2,
    height: 28,
    fontWeight: FontWeight.w900,
  );
  //TEXT REGULAR 20
  static const textRegular_20 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 20,
    letterSpacing: 0.2,
    height: 24
  );
  //TEXT MEDIUM 20
  static const textMedium_20 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 20,
    letterSpacing: 0.2,
    height: 24,
    fontWeight: FontWeight.w700,
  );
  //TEXT BOLD 20
  static const textBold_20 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 20,
    letterSpacing: 0.2,
    height: 24,
    fontWeight: FontWeight.w900,
  );
  //TEXT REGULAR 24
  static const textRegular_24 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 24,
    letterSpacing: 0.2,
    height: 28
  );
  //TEXT MEDIUM 24
  static const textMedium_24 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 24,
    letterSpacing: 0.2,
    height: 28,
    fontWeight: FontWeight.w700,
  );
  //TEXT BOLD 24
  static const textBold_24 = TextStyle(
    fontFamily: 'Space_Grotesk',
    fontSize: 24,
    letterSpacing: 0.2,
    height: 28,
    fontWeight: FontWeight.w900,
  );
}
