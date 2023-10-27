import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class Tags extends StatelessWidget {
  final String tagName;
  const Tags({super.key, required this.tagName});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.00429184549,
              horizontal: width * 0.02325581395),
          child: Text(tagName, style: GlobalVariables.textMedium_12),
        ));
  }
}
