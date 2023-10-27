import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/common/widgets/roadmap_tag.dart';

class SeeMoreRoadMaps extends StatelessWidget {
  const SeeMoreRoadMaps({super.key});

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
        centerTitle: true,
        title: Text(
          'Roadmaps',
          style: GlobalVariables.textBold_24.copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/resources_largeBG.png'),
                Padding(
                  padding: EdgeInsets.all(width * 0.05581395348),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const RoadMapTag(text: 'Web Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'App Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'CP'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'AI/ML'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Game Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'ROS'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'UI/UX'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'CP'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Web Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Linux'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'AI/ML'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Game Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'ROS'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'Web Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'UI/UX'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'App Dev'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'AI/ML'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'ROS'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Game Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Linux'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'Web Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'App Development'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'CP'),
                        ],
                      ),
                      SizedBox(height: height * 0.01287553648),
                      Row(
                        children: [
                          const RoadMapTag(text: 'ROS'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'CP'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'UI/UX'),
                          SizedBox(width: width * 0.02325581395),
                          const RoadMapTag(text: 'Game Development'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
