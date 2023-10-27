import 'package:flutter/material.dart';

import '../../common/widgets/session_tag.dart';
import '../../constants/global_variables.dart';

class SeeMoreSessionPresentation extends StatelessWidget {
  const SeeMoreSessionPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.09451,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.01860465116),
          child: Text(
            'Session Presentations',
            style: GlobalVariables.textBold_24.copyWith(color: Colors.black),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/resources_largeBG.png'),
          Padding(
            padding: EdgeInsets.all(width * 0.05581395348),
            child: Column(
              children: [
                Row(
                    children: [
                      const SessionTag(tagName: 'Web Development'),
                      SizedBox(width: width * 0.02325581395),
                      const SessionTag(tagName: 'Game Development')
                    ],
                  ),
                SizedBox(height: height * 0.010),
                Row(
                  children: [
                    const SessionTag(tagName: 'ROS'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'App Development'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'CP'),
                    SizedBox(width: width * 0.02325581395),
                  ],
                ),
                SizedBox(height: height * 0.010),
                Row(
                    children: [
                      const SessionTag(tagName: 'Web Development'),
                      SizedBox(width: width * 0.02325581395),
                      const SessionTag(tagName: 'Game Development')
                    ],
                  ),
                SizedBox(height: height * 0.010),
                Row(
                  children: [
                    const SessionTag(tagName: 'ROS'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'App Development'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'CP'),
                    SizedBox(width: width * 0.02325581395),
                  ],
                ),
                SizedBox(height: height * 0.010),
                Row(
                    children: [
                      const SessionTag(tagName: 'Web Development'),
                      SizedBox(width: width * 0.02325581395),
                      const SessionTag(tagName: 'Game Development')
                    ],
                  ),
                SizedBox(height: height * 0.010),
                Row(
                  children: [
                    const SessionTag(tagName: 'ROS'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'App Development'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'CP'),
                    SizedBox(width: width * 0.02325581395),
                  ],
                ),
                SizedBox(height: height * 0.010),
                Row(
                    children: [
                      const SessionTag(tagName: 'Web Development'),
                      SizedBox(width: width * 0.02325581395),
                      const SessionTag(tagName: 'Game Development')
                    ],
                  ),
                SizedBox(height: height * 0.010),
                Row(
                  children: [
                    const SessionTag(tagName: 'ROS'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'App Development'),
                    SizedBox(width: width * 0.02325581395),
                    const SessionTag(tagName: 'CP'),
                    SizedBox(width: width * 0.02325581395),
                  ],
                ),
                SizedBox(height: height * 0.010),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
