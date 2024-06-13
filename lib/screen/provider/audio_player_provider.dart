import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../modal/continue_modal.dart';

class AudioPlayerProvider with ChangeNotifier {
  List<HomeModal> homeModalList = [];
  int audioSongPlayerIndex = 0;
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  double _sliderValue = 0.0;
  double _maxDuration = 0.0;
  bool isplayingsong = true;

  double get sliderValue => _sliderValue;

  double get maxDuration => _maxDuration;

  AudioPlayerProvider() {
    _openAudio();
  }

  bool isChange = false;

  Future<void> _openAudio() async {
    await _assetsAudioPlayer.open(
      Audio(homeModalList[audioSongPlayerIndex].audioName!),
      autoStart: !isplayingsong,
      showNotification: true,
    );
    _assetsAudioPlayer.currentPosition.listen((Duration position) {
      if (_maxDuration != 0.0) {
        _sliderValue = position.inSeconds.toDouble();
        notifyListeners();
      }
    });

    _assetsAudioPlayer.current.listen((Playing? playing) {
      if (playing != null) {
        final duration = playing.audio.duration;
        _maxDuration = duration.inSeconds.toDouble();
        notifyListeners();
      }
    });
  }

  void play() {
    _assetsAudioPlayer.play();
    notifyListeners();
  }

  void pause() {
    _assetsAudioPlayer.pause();
    notifyListeners();
  }

  void onPlayingSong() {
    if (isplayingsong) {
      play();
      // isChange = true;
      isplayingsong = false;
    } else {
      pause();
      // isChange = false;
      isplayingsong = true;
    }
    notifyListeners();
  }

  void restartSong() {
    _sliderValue = 0;
    notifyListeners();
  }

  void onPlayingNextSongs() {
    if (homeModalList.length - 1 > audioSongPlayerIndex) {
      audioSongPlayerIndex++;
    }
    _openAudio();
    notifyListeners();
  }

  void onPlayingPreviewSongs() {
    if (audioSongPlayerIndex > 0) {
      audioSongPlayerIndex--;
    }
    _openAudio();
    notifyListeners();
  }

  void seek(double seconds) {
    _assetsAudioPlayer.seek(Duration(seconds: seconds.toInt()));
  }

  void storageAudio(List listname, int index) {
    audioSongPlayerIndex = index;
    homeModalList.clear();
    for (var item in listname) {
      HomeModal homeModal = HomeModal.setdata(item);
      homeModalList.add(homeModal);
    }
    _openAudio();
    notifyListeners();
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }
}
