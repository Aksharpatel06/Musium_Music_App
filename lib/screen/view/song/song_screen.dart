import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/utils/color_list.dart';
import 'package:provider/provider.dart';

import '../../provider/audio_player_provider.dart';

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
      appBar: AppBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.005,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          audioProvider.homeModalList[audioProvider.audioSongPlayerIndex].name,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
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
                      child: const Icon(
                        CupertinoIcons.play_arrow_solid,
                        size: 30,
                      ),
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
          ),
        ),
      ),
    );
  }
}
