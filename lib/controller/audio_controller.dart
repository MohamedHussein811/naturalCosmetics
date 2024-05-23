import 'package:just_audio/just_audio.dart';
import 'package:get/get.dart';

class AudioController extends GetxController {
  late AudioPlayer _audioPlayer;
  var isPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();
    _audioPlayer = AudioPlayer();

    // Set the initial asset and volume
    _audioPlayer.setVolume(0.5);
    _audioPlayer.setAsset('assets/music/bacground_music.mp3');

    // Listen to the player state stream for when the audio completes
    _audioPlayer.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        _audioPlayer.seek(Duration.zero);
        if (isPlaying.value) {
          _audioPlayer.play();
        }
      }
    });

    // Handle errors in the playback stream
    _audioPlayer.playbackEventStream.listen((event) {}, onError: (Object e, StackTrace stackTrace) {
      print('Error occurred: $e');
    });

  }

  // Function to toggle audio playback
  void toggleAudio(bool value) {
    isPlaying.value = value;
    if (isPlaying.value) {
      _audioPlayer.play();
    } else {
      _audioPlayer.pause();
    }
  }

  @override
  void onClose() {
    _audioPlayer.dispose();
    super.onClose();
  }
}
