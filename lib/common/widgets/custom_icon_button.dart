import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.black,
          width: width * 0.0078125,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff000000),
            blurRadius: 0,
            offset: Offset(4, 4),
          ),
        ],
        color: GlobalVariables.primaryColor,
      ),
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width * 0.0625,
            height: height * 0.0286259541984733,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.0625,
                  height: height * 0.0286259541984733,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
