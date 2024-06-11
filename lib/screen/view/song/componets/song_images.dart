import 'package:flutter/material.dart';

import '../../../provider/audio_player_provider.dart';

Column songImage(double height, AudioPlayerProvider audioProvider) {
  return Column(
    children: [
      SizedBox(
        height: height * 0.008,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Image.asset(
            audioProvider.homeModalList[audioProvider.audioSongPlayerIndex].img,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: height*0.02,
      ),
    ],
  );
}
