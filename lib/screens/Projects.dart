import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/screens/projects/all.dart';
import 'package:zairza_app/screens/projects/completed.dart';
import 'package:zairza_app/screens/projects/on_going.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              toolbarHeight: height * 0.09451,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: width * 0.01860465116),
                child: Text(
                  'Projects',
                  style:
                      GlobalVariables.textBold_24.copyWith(color: Colors.black),
                ),
              ),
              bottom: TabBar(
                  indicator: BoxDecoration(
                      boxShadow: GlobalVariables.shadowEffect,
                      border: Border.all(width: 2),
                      color: GlobalVariables.primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  padding:
                      EdgeInsets.symmetric(horizontal: width * 0.05581395348),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: GlobalVariables.textMedium_14,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.black,
                  labelStyle: GlobalVariables.textBold_16,
                  indicatorColor: GlobalVariables.primaryColor,
                  indicatorWeight: 2,
                  labelColor: Colors.black,
                  tabs: const [
                    Tab(text: "All Projects"),
                    Tab(text: "Ongoing"),
                    Tab(text: "Completed")
                  ])),
          body: const TabBarView(
            children: [AllProjects(), OnGoingProjects(), CompletedProjects()],
          ),
        ));
  }
}
