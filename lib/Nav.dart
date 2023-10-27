import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/screens/home_screen.dart';

import 'Screens/My_Profile.dart';
import 'Screens/Projects.dart';
import 'Screens/Resources.dart';

class NavigationBarPage extends StatefulWidget {
  final int givenIndex;
  const NavigationBarPage({super.key, required this.givenIndex});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.givenIndex;
  }

  final List _widgetOptions = [
    const HomeScreen(),
    const ResourcesPage(),
    const ProjectPage(),
    const MyProfile()
  ];

  get isSelected => true;

  void _onItemTapped(int widgetOptions) {
    setState(() {
      _selectedIndex = widgetOptions;
    });
  }

  bool onSelected = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: Container(
          height: height * 0.10085836909,
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black, width: 4))),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black,
              unselectedLabelStyle: GlobalVariables.textBold_12,
              selectedLabelStyle: GlobalVariables.textBold_14,
              selectedItemColor: const Color(0xffFF8B2C),
              showUnselectedLabels: true,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                    icon: _selectedIndex == 0
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Image.asset(
                              'assets/icons/navbarIcons/Homecolor.png',
                              height: height * 0.04721030042,
                              width: height * 0.04721030042,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: SizedBox(
                              height: height * 0.04291845493,
                              width: height * 0.04291845493,
                              child: SvgPicture.asset(
                                  'assets/icons/navbarIcons/Home.svg'),
                            ),
                          ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 1
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Image.asset(
                              'assets/icons/navbarIcons/Resourcescolor.png',
                              height: height * 0.04721030042,
                              width: height * 0.04721030042,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: SizedBox(
                              height: height * 0.04291845493,
                              width: height * 0.04291845493,
                              child: SvgPicture.asset(
                                  'assets/icons/navbarIcons/Resources.svg'),
                            ),
                          ),
                    label: 'Resources'),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 2
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Image.asset(
                              'assets/icons/navbarIcons/Projectscolor.png',
                              height: height * 0.04721030042,
                              width: height * 0.04721030042,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: SizedBox(
                              height: height * 0.04291845493,
                              width: height * 0.04291845493,
                              child: SvgPicture.asset(
                                  'assets/icons/navbarIcons/Projects.svg'),
                            ),
                          ),
                    label: 'Projects'),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 3
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Image.asset(
                              'assets/icons/navbarIcons/Profilecolor.png',
                              height: height * 0.04721030042,
                              width: height * 0.04721030042,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: SizedBox(
                              height: height * 0.04291845493,
                              width: height * 0.04291845493,
                              child: SvgPicture.asset(
                                  'assets/icons/navbarIcons/Profile.svg'),
                            ),
                          ),
                    label: 'Profile'),
              ]),
        ));
  }
}
