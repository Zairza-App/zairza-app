import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Layout Building Session",
                  style: GlobalVariables.textBold_20,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "27th July 2023 - 8:00 PM",
                  style: GlobalVariables.textRegular_16,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Online Meet | Flutter",
                    style: GlobalVariables.textRegular_16,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  width: width * 0.90,
                  height: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 2)),
                  // child: Image.asset("assets/images/card_details.png", fit: BoxFit.fill,),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed cursus ante. Nam convallis malesuada nibh, quis porta ligula tempor interdum. In lobortis pellentesque sem, quis consectetur metus ultrices sit amet. Etiam non tortor in enim condimentum semper. Nullam in consectetur nulla. Quisque rhoncus, arcu ",
                  style: GlobalVariables.textMedium_14,
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  "Senior incharge - Abhinaba Dash  ",
                  style: GlobalVariables.textBold_14,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
