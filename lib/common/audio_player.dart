import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:injectable/injectable.dart';

@singleton
class AudioPlayer {
  final PlayerController _playerController = PlayerController();

  PlayerController get playerController => _playerController;

  Future<void> preparePlayer(String songPath) async {
    await _playerController.preparePlayer(
      path: songPath,
      shouldExtractWaveform: true,
      
    );
  }

  Future<void> play() async {
    // if (_playerController.playerState == PlayerState.playing ||
    //     _playerController.playerState == PlayerState.paused) {
    //   await _playerController.stopPlayer();
    // }
    await _playerController.startPlayer(forceRefresh: false);
  }
}
