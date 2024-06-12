import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/color_list.dart';
import '../../../provider/audio_player_provider.dart';

Column songButton(double height, AudioPlayerProvider audioProvider) {
  return Column(
    children: [
      SizedBox(
        height: height*0.02,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.shuffle,
              size: 25,
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              audioProvider.onPlayingPreviewSongs();
            },
            child: const Icon(
              CupertinoIcons.backward_end_fill,
              size: 30,
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              audioProvider.onPlayingSong();
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: primaryColor,
              child: (audioProvider.isplayingsong)? const Icon(
                CupertinoIcons.play_arrow_solid,
                size: 30,
              ): const Icon(
                CupertinoIcons.pause,
                size: 30,
              )
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              audioProvider.onPlayingNextSongs();
            },
            child: const Icon(
              CupertinoIcons.forward_end_fill,
              size: 30,
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.return_icon,
              size: 25,
            ),
          ),
        ],
      ),
    ],
  );
}
