import 'package:flutter/material.dart';
import 'package:zairza_app/common/widgets/blog_card.dart';
import 'package:zairza_app/common/widgets/roadmap_tag.dart';
import 'package:zairza_app/common/widgets/session_tag.dart';
import 'package:zairza_app/constants/global_variables.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

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
          child: Text(
            'Resources',
            style: GlobalVariables.textBold_24.copyWith(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Image.asset('assets/images/resources/resources_shortBG.png'),
              Padding(
                padding: EdgeInsets.all(width * 0.05581395348),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Roadmaps',
                          style: GlobalVariables.textBold_20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, '/roadmaps');
                          },
                          child: Text("See more",
                              style: GlobalVariables.textMedium_14.copyWith(
                                color: GlobalVariables.primaryColor,
                                decoration: TextDecoration.underline,
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 0.01716738197),
                      child: Row(
                        children: [
                          const RoadMapTag(text: 'Web Dev'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'App Dev'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'AI/ML'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Game Dev'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const RoadMapTag(text: 'UI/UX'),
                        SizedBox(width: width * 0.02325581395),
                        const RoadMapTag(text: 'ROS'),
                        SizedBox(width: width * 0.02325581395),
                        const RoadMapTag(text: 'CP'),
                        SizedBox(width: width * 0.02325581395),
                        const RoadMapTag(text: 'Branding'),
                        SizedBox(width: width * 0.02325581395),
                        const RoadMapTag(text: '...'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.02575107296,
                right: height * 0.02575107296,
                left: height * 0.02575107296,
                bottom: height * 0.01716738197),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Blogs',
                  style: GlobalVariables.textBold_20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/blogs');
                  },
                  child: Text("See more",
                      style: GlobalVariables.textMedium_14.copyWith(
                        color: GlobalVariables.primaryColor,
                        decoration: TextDecoration.underline,
                      )),
                )
              ],
            ),
          ),
          SizedBox(
              height: height * 0.27902145922,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: width * 0.0465116279),
                      child: const BlogCard(),
                    );
                  })),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.02575107296,
                right: height * 0.02575107296,
                left: height * 0.02575107296,
                bottom: height * 0.01716738197),
            child: const Row(
              children: [
                Text(
                  'Inventory',
                  style: GlobalVariables.textBold_20,
                ),
                Spacer()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05581395348),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/inventory');
              },
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: GlobalVariables.shadowEffect,
                      color: GlobalVariables.secondaryColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 28),
                    child: Image.asset('assets/images/inventory.png'),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.02575107296,
                right: height * 0.02575107296,
                left: height * 0.02575107296,
                bottom: height * 0.01716738197),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Session Presentations',
                  style: GlobalVariables.textBold_20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/session_presentation');
                  },
                  child: Text("See more",
                      style: GlobalVariables.textMedium_14.copyWith(
                        color: GlobalVariables.primaryColor,
                        decoration: TextDecoration.underline,
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * 0.02575107296),
            child: Row(
              children: [
                const SessionTag(tagName: 'Web Dev starter'),
                SizedBox(width: width * 0.02325581395),
                const SessionTag(tagName: 'Game Dev basics')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: height * 0.02575107296,
                left: height * 0.02575107296,
                top: height * 0.01287553648),
            child: Row(
              children: [
                const SessionTag(tagName: 'into ROS world'),
                SizedBox(width: width * 0.02325581395),
                const SessionTag(tagName: 'CP proffesional game')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.02575107296,
                right: height * 0.02575107296,
                left: height * 0.02575107296,
                bottom: height * 0.01716738197),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Videos',
                  style: GlobalVariables.textBold_20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/blogs');
                  },
                  child: Text("See more",
                      style: GlobalVariables.textMedium_14.copyWith(
                        color: GlobalVariables.primaryColor,
                        decoration: TextDecoration.underline,
                      )),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
