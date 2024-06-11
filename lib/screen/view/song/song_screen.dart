import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/audio_player_provider.dart';
import 'componets/app_bar.dart';
import 'componets/lyrics.dart';
import 'componets/song_button.dart';
import 'componets/song_images.dart';
import 'componets/song_title_slider.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioPlayerProvider>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                songAppBar(context),
                songImage(height, audioProvider),
                songTitleSlider(audioProvider, width),
                songButton(height,audioProvider),
                lyricsTitle(height),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
