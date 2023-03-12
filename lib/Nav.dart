import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



import 'Screens/Homepage.dart';
import 'Screens/My_Profile.dart';
import 'Screens/Projects.dart';
import 'Screens/Resources.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex = 0;

  List _widgetOptions = [
    HomePage(),
    ResourcesPage(),
    ProjectPage(),
    MyProfile()
  ];

  get isSelected => true;

  void _onItemTapped(int _widgetOptions) {
    setState(() {
      _selectedIndex = _widgetOptions;
    });
  }

  bool onSelected = true;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black, width: 4))),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                  fontFamily: 'Space_Grotesk', fontWeight: FontWeight.bold),
              selectedLabelStyle: TextStyle(
                  fontFamily: 'Space_Grotesk', fontWeight: FontWeight.bold),
              selectedItemColor: Color(0xffFF8B2C),
              showUnselectedLabels: true,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                    icon: _selectedIndex == 0
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black, offset: Offset(2, 2))
                                ],
                                border: Border.all(color: Colors.black)),
                            child:
                                SvgPicture.asset('assets/images/Homecolor.svg'),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                            
                            child: SvgPicture.asset('assets/images/Home.svg'),
                          ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 1
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black, offset: Offset(2, 2))
                                ],
                                border: Border.all(color: Colors.black)),
                            child: SvgPicture.asset(
                                'assets/images/Resourcescolor.svg'),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                           
                            child:
                                SvgPicture.asset('assets/images/Resources.svg'),
                          ),
                    label: 'Resources'),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 2
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black, offset: Offset(2, 2))
                                ],
                                border: Border.all(color: Colors.black)),
                            child: SvgPicture.asset(
                                'assets/images/Projectscolor.svg'),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                  
                            child:
                                SvgPicture.asset('assets/images/Projects.svg'),
                          ),
                    label: 'Projects'),
                BottomNavigationBarItem(
                    icon: _selectedIndex == 3
                        ? Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black, offset: Offset(2, 2))
                                ],
                                border: Border.all(color: Colors.black)),
                            child: SvgPicture.asset(
                                'assets/images/Profilecolor.svg'),
                          )
                        : Container(
                            height: 40,
                            width: 40,
                         
                            child:
                                SvgPicture.asset('assets/images/Profile.svg'),
                          ),
                    label: 'Profile'),
              ]),
        ));
  }
}
