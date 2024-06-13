import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/screen/provider/audio_player_provider.dart';
import 'package:provider/provider.dart';

Row songAppBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CupertinoButton(
        padding: EdgeInsets.zero,
        child: const Icon(Icons.arrow_back_outlined),
        onPressed: () {
          Navigator.of(context).pop();
          Provider.of<AudioPlayerProvider>(context).isChange = false;
        },
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Icon(
          Icons.menu,
        ),
      ),
    ],
  );
}
