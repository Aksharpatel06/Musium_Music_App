import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../provider/audio_player_provider.dart';

Column songTitleSlider(AudioPlayerProvider audioProvider, double width) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width:width*0.5,
                  child: Text(
                    audioProvider.homeModalList[audioProvider.audioSongPlayerIndex].name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "Savi Kehlon",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(CupertinoIcons.heart_solid),
                SizedBox(
                  width: width*0.1,
                ),
                const Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      Slider(
        value: audioProvider.sliderValue,
        max: audioProvider.maxDuration > 0
            ? audioProvider.maxDuration
            : 1.0,
        onChanged: (value) {
          if (audioProvider.maxDuration > 0) {
            audioProvider.seek(value);
          }
        },
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('${audioProvider.sliderValue~/60}:'),
                Text((audioProvider.sliderValue.toInt()%60).toString().padLeft(2, '0')),
              ],
            ),
            Row(
              children: [
                Text('${audioProvider.maxDuration~/60}:'),
                Text('${(audioProvider.maxDuration.toInt()%60)}'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
