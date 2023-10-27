import 'package:flutter/material.dart';
import 'package:youtube/youtube_thumbnail.dart';
import 'package:zairza_app/constants/global_variables.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.73488372093,
      decoration: BoxDecoration(
          border: Border.all(width: 2), borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                  decoration: const BoxDecoration(
                      border: BorderDirectional(bottom: BorderSide(width: 2))),
                  child: Image.network(
                    YoutubeThumbnail(youtubeId: 'X8ipUgXH6jw').hq(),
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Flutter vs React Native',
                    style: GlobalVariables.textBold_14),
                Text(
                  'Flutter is better than React Native in everyway Flutter is better than React Native in everyway Flutter is better than React Native in everyway',
                  style: GlobalVariables.textRegular_12,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
