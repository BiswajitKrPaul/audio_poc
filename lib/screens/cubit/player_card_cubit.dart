import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

part 'player_card_cubit.freezed.dart';
part 'player_card_state.dart';

const uuid = Uuid();

class PlayerCardCubit extends Cubit<PlayerCardState> {
  PlayerCardCubit() : super(PlayerCardState());

  Future<void> setData(String assetName) async {
    emit(state.copyWith(isLoading: true));
    if (state.playerController != null) {
      state.playerController!.stopPlayer();
    }
    emit(state.copyWith(audioFile: assetName));
    final controller = PlayerController();
    final doc = await getTemporaryDirectory();
    final file = File(path.join(doc.path, "${uuid.v4()}.mp3"));
    final audioFile = await rootBundle.load(state.audioFile);
    await file.writeAsBytes(audioFile.buffer.asUint8List());
    controller.preparePlayer(path: file.path, shouldExtractWaveform: true);
    emit(state.copyWith(playerController: controller, isLoading: false));
  }

  Future<void> play() async {
    state.playerController!.startPlayer();
  }

  @override
  Future<void> close() async {
    // Dispose of the player controller when the cubit is closed
    if (state.playerController != null) {
      print("LOG: true");
      await state.playerController!.stopPlayer();
      state.playerController!.dispose();
    }
    super.close();
  }
}
