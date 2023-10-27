import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class SessionTag extends StatelessWidget {
  final String tagName;
  const SessionTag({super.key, required this.tagName});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.03862660944,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), border: Border.all(width: 2),
          color: Colors.white),
      child: Row(
        children: [
          Container(
            height: height * 0.03862660944,
            width: height * 0.0321888412,
            decoration: const BoxDecoration(
                color: GlobalVariables.pinkColor,
                border: BorderDirectional(end: BorderSide(width: 2))),
            child: Padding(
              padding: EdgeInsets.all(width * 0.01395348837),
              child: Image.asset('assets/icons/LinkIcon.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.01860465116),
            child: Text(tagName, style: GlobalVariables.textMedium_14),
          )
        ],
      ),
    );
  }
}
