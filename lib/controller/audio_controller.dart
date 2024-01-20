import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:get/get.dart';
class AudioController extends GetxController {
  late AudioPlayer _audioPlayer;

  @override
  void onInit() {
    super.onInit();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setVolume(0.5);
    _audioPlayer.setAsset('assets/music/bacground_music.mp3');
    _audioPlayer.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.play();
      }
    });
    _audioPlayer.play();
  }

  @override
  void onClose() {
    _audioPlayer.dispose();
    super.onClose();
  }
}

