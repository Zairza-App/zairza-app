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
}
