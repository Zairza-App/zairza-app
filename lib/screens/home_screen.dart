import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zairza_app/common/widgets/carousel.dart';
import 'package:zairza_app/common/widgets/custom_icon_button.dart';
import 'package:zairza_app/common/widgets/home_card.dart';
import 'package:zairza_app/common/widgets/project_card.dart';
import 'package:zairza_app/constants/global_variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: height * 0.09451,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03255813953),
              child: Row(
                children: [
                  Image.asset('assets/logo.png',
                      height: height * 0.05245, width: width * 0.114583),
                  SizedBox(width: width * 0.03125),
                  RichText(
                    text: TextSpan(
                      text: 'Hello Buddy!!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily:
                              GoogleFonts.spaceGrotesk().fontFamily.toString()),
                      children: const <TextSpan>[
                        TextSpan(
                            text: '\nWelcome to Zairza',
                            style: GlobalVariables.textBold_20),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const CustomIconButton(),
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CarouselImage(),
                SizedBox(height: height * 0.0286259541984733),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width * 0.05581395348),
                  child: const Text("Upcoming Events",
                      textAlign: TextAlign.justify,
                      style: GlobalVariables.textBold_20),
                ),
                SizedBox(
                  height: height * 0.0135419847328244,
                ),
                SizedBox(
                    height: height * 0.3150944206,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(left: width * 0.0465116279),
                            child: const HomeCard(),
                          );
                        })),
                SizedBox(height: height * 0.03004291845),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width * 0.05581395348),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Ongoing Projects",
                          textAlign: TextAlign.justify,
                          style: GlobalVariables.textBold_20),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/project');
                        },
                        child: Text("See all",
                            style: GlobalVariables.textMedium_14.copyWith(
                              color: GlobalVariables.primaryColor,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.0135419847328244,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.05581395348,
                      right: width * 0.05581395348,
                      bottom: height * 0.02145922746),
                  child: const ProjectCard(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.05581395348,
                      right: width * 0.05581395348,
                      bottom: height * 0.02145922746),
                  child: const ProjectCard(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.05581395348,
                      right: width * 0.05581395348,
                      bottom: height * 0.02145922746),
                  child: const ProjectCard(),
                )
              ],
            ),
          ),
        ));
  }
}
