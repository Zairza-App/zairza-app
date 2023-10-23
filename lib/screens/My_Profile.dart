import 'package:flutter/material.dart';
import 'package:zairza_app/common/widgets/custom_icon_button.dart';
import 'package:zairza_app/constants/global_variables.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: height * 0.09451,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.01860465116),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'My Profile',
                    style: GlobalVariables.textBold_24
                        .copyWith(color: Colors.black),
                  ),
                ),
                const Spacer(),
                const CustomIconButton(),
              ],
            ),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05581395348),
        child: Column(
          children: [
            Container(
              width: width * 0.88837209302,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: GlobalVariables.shadowEffect,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 2)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03720930232,
                    vertical: width * 0.03720930232),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: height * 0.06866952789,
                          width: height * 0.06866952789,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black, offset: Offset(1, 1)),
                                BoxShadow(
                                    color: Colors.black, offset: Offset(2, 2))
                              ],
                              border: Border.all(width: 2)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.asset(
                                  'assets/images/profile/profilePhoto/Profile1.png')),
                        ),
                        SizedBox(width: width * 0.05581395348),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Abhinaba Dash',
                              style: GlobalVariables.textBold_20,
                            ),
                            Text(
                              'IT + 2021-25 + 2nd Year',
                              style: GlobalVariables.textBold_12.copyWith(
                                  color: GlobalVariables.primaryColor),
                            ),
                            SizedBox(
                              height: height * 0.00429184549,
                            ),
                            Text(
                              'ZEN69420H3H3',
                              style: GlobalVariables.textRegular_12
                                  .copyWith(height: 1.2),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01287553648,
                    ),
                    Text(
                      'Domain -',
                      style: GlobalVariables.textBold_16
                          .copyWith(color: GlobalVariables.primaryColor),
                    ),
                    const Text('Flutter | Graphic design | Video editing',
                        style: GlobalVariables.textRegular_14),
                    SizedBox(
                      height: height * 0.01287553648,
                    ),
                    Text(
                      'Join me on-',
                      style: GlobalVariables.textBold_16
                          .copyWith(color: GlobalVariables.primaryColor),
                    ),
                    SizedBox(
                      height: height * 0.00429184549,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/profile/joinMeOn/mail.png',
                            width: width * 0.09302325581),
                        SizedBox(width: width * 0.03720930232),
                        Image.asset(
                            'assets/images/profile/joinMeOn/linkedin.png',
                            width: width * 0.09302325581),
                        SizedBox(width: width * 0.03720930232),
                        Image.asset(
                            'assets/images/profile/joinMeOn/behance.png',
                            width: width * 0.09302325581),
                        SizedBox(width: width * 0.03720930232),
                        Image.asset('assets/images/profile/joinMeOn/github.png',
                            width: width * 0.09302325581)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.02575107296),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: GlobalVariables.shadowEffect,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 2)),
              child: ExpansionTile(
                tilePadding: EdgeInsets.symmetric(
                    horizontal: width * 0.03720930232,
                    vertical: height * 0.00858369098),
                iconColor: GlobalVariables.primaryColor,
                textColor: GlobalVariables.primaryColor,
                // trailing: Container(
                //     height: 40,
                //     width: 40,
                //     decoration: BoxDecoration(
                //         // color: const Color(0xffFF90E8),
                //         border: Border.all(color: Colors.black, width: 2),
                //         borderRadius: BorderRadius.circular(4)),
                //     child: const Icon(
                //       Icons.arrow_drop_down,
                //       color: Colors.black,
                //       size: 30,
                //     )),
                collapsedIconColor: Colors.black,
                title: const Text(
                  'Achievements',
                  style: GlobalVariables.textBold_20,
                ),
                backgroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(width: 0)),
                expandedAlignment: Alignment.topLeft,
                childrenPadding: EdgeInsets.only(
                    left: width * 0.03720930232,
                    right: width * 0.03720930232,
                    bottom: height * 0.02145922746),
                children: const [
                  Text('- data'),
                  Text('- data'),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02575107296,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: GlobalVariables.shadowEffect,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 2)),
              child: ExpansionTile(
                tilePadding: EdgeInsets.symmetric(
                    horizontal: width * 0.03720930232,
                    vertical: height * 0.00858369098),
                iconColor: GlobalVariables.primaryColor,
                textColor: GlobalVariables.primaryColor,
                // trailing: Container(
                //     height: 40,
                //     width: 40,
                //     decoration: BoxDecoration(
                //         // color: const Color(0xffFF90E8),
                //         border: Border.all(color: Colors.black, width: 2),
                //         borderRadius: BorderRadius.circular(4)),
                //     child: const Icon(
                //       Icons.arrow_drop_down,
                //       color: Colors.black,
                //       size: 30,
                //     )),
                collapsedIconColor: Colors.black,
                title: const Text(
                  'Jobs / Internships',
                  style: GlobalVariables.textBold_20,
                ),
                backgroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(width: 0)),
                expandedAlignment: Alignment.topLeft,
                childrenPadding: EdgeInsets.only(
                    left: width * 0.03720930232,
                    right: width * 0.03720930232,
                    bottom: height * 0.02145922746),
                children: const [
                  Text('- data'),
                  Text('- data'),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02575107296,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('My Projects', style: GlobalVariables.textBold_20),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: GlobalVariables.shadowEffect,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Icon(Icons.add_box_outlined)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
