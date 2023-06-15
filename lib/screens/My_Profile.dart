import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      // bottomNavigationBar: NavigationBarPage(),
      body: Padding(
        padding: const EdgeInsets.only(top: 78.0, left: 24, right: 24),
        child: SizedBox(
          height: mediaQuery.size.height * 1,
          width: mediaQuery.size.width * 1,
          child: Column(
            children: [
              SizedBox(
                width: mediaQuery.size.width * 0.88,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'My Profile',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Space_Grotesk',
                          color: Color(0xff5276DE),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        // color: Colors.orange,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  //spreadRadius: 2,
                                  offset: Offset(2, 2)),
                            ],
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xffFF8B2C)),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.more_horiz))
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                width: mediaQuery.size.width * 0.88,
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(2, 2))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 2)),
                // height: 230,
                // width: 370,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, offset: Offset(2, 2))
                                ],
                                border: Border.all(color: Colors.black)),
                            child:
                                SvgPicture.asset('assets/images/Profile1.svg'),
                          ),

                          const SizedBox(width: 24),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abhinaba Dash',
                                style: TextStyle(
                                    fontFamily: 'Space_Grotesk',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'IT + 2021-25 + 2nd Year',
                                style: TextStyle(
                                    fontFamily: 'Space_Grotesk',
                                    color: Color(0xffFF8B2C),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'ZEN69420H3H3',
                                style: TextStyle(
                                    fontFamily: 'Space_Grotesk',
                                    color: Colors.black,
                                    fontSize: 12),
                              )
                            ],
                          )
                          // Text('Abhinaba Dash',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Domain -',
                        style: TextStyle(
                            fontFamily: 'Space_Grotesk',
                            color: Color(0xffFF8B2C),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Flutter | Graphic design | Video editing',
                        style: TextStyle(
                            fontFamily: 'Space_Grotesk', color: Colors.black),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Join me on-',
                        style: TextStyle(
                            fontFamily: 'Space_Grotesk',
                            color: Color(0xffFF8B2C),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/Messenger.png'),
                          const SizedBox(width: 16),
                          Image.asset('assets/images/Linkdin.png'),
                          const SizedBox(width: 16),
                          Image.asset('assets/images/BE.png'),
                          const SizedBox(width: 16),
                          Image.asset('assets/images/Github.png')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 80,
                width: mediaQuery.size.width * 0.88,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(2, 2))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 2)),
                // width: 370,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 24.0, bottom: 24, left: 20),
                      child: Text(
                        'Achievements',
                        style: TextStyle(
                            fontFamily: 'Space_Grotesk',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffFF90E8),
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 80,
                width: mediaQuery.size.width * 0.88,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(2, 2))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 2)),
                //width: 370,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 24.0, bottom: 24, left: 20),
                      child: Text(
                        'Jobs/ Internships',
                        style: TextStyle(
                            fontFamily: 'Space_Grotesk',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffFF90E8),
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: mediaQuery.size.width * 0.88,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/Myprojects.svg'),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff23A094),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, offset: Offset(2, 2))
                          ],
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Icon(Icons.add_box_outlined)),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
