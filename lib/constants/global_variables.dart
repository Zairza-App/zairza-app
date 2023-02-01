import 'package:flutter/material.dart';

String uri = 'http://192.168.60.106:3000';
// String uri = 'https://some-mobileapp.herokuapp.com';

class Keys {
  static final messangerKey = GlobalKey<ScaffoldMessengerState>();
}

class GlobalVariables {
  // COLORS

  static const primaryColor = Color(0xffEF7A6B);
  static const secondaryColor = Color(0xffFFE151);
  static const backgroundColor = Color(0xffE8F1D7);
  static const appbarColor = Color(0xffFEF9ED);

  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
}
