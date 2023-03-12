import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double width;
  final Image icon;
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color,
      required this.width,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(children: [
        Row(
          children: [
            const SizedBox(
              width: 1,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 1,
                ),
                Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 2,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 3,
                ),
                Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 4,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Container(
                  height: 64,
                  width: width,
                  decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: width,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            color: const Color(0xffFFC700),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(text,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          letterSpacing: 0.2,
                          color: Color(0xff000000))),
                  const SizedBox(width: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: icon,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
