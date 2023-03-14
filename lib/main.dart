import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/features/auth_screen.dart';
import 'package:zairza_app/screens/domain_details.dart';
import 'package:zairza_app/screens/events.dart';
import 'package:zairza_app/screens/home_screen.dart';
import 'package:zairza_app/screens/sign_in.dart';

import 'Nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
      ),

      home: NavigationBarPage(),

      routes: {
        '/home': (context) => HomeScreen(),
      },

    );
  }
}