import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class RoadMapTag extends StatelessWidget {
  final String text;
  const RoadMapTag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 2),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
        child: Text(
          text,
          style: GlobalVariables.textMedium_14,
        ),
      ),
    );
  }
}
