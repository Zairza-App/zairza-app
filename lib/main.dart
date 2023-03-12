import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zairza_app/constants/global_variables.dart';
import './sign_up.dart';

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
        scaffoldBackgroundColor: const Color(0xffffffff),
        fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
      ),
      home: SignUp(),
    );
  }
}