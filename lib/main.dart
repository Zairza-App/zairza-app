import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/screens/card_details.dart';
import 'package:zairza_app/screens/home_screen.dart';
import 'package:zairza_app/screens/resources/inventory.dart';
import 'package:zairza_app/screens/resources/see_more_blogs.dart';
import 'package:zairza_app/screens/resources/see_more_roadmaps.dart';
import 'package:zairza_app/screens/resources/see_more_session_presentation.dart';
import 'nav.dart';

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
        scaffoldBackgroundColor: GlobalVariables.appbarColor,
        fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
      ),
      home: const NavigationBarPage(givenIndex: 0),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/home_card': (context) => const CardDetails(),
        '/roadmaps': (context) => const SeeMoreRoadMaps(),
        '/blogs': (context) => const SeeMoreBlogs(),
        '/session_presentation': (context) => const SeeMoreSessionPresentation(),
        '/inventory': (context) => const Inventory(),
        '/project': (context) => const NavigationBarPage(givenIndex: 2)
      },
    );
  }
}
