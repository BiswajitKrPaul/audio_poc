part of 'player_card_cubit.dart';

@freezed
abstract class PlayerCardState with _$PlayerCardState {
  const factory PlayerCardState({
    @Default(false) isLoading,
    PlayerController? playerController,
    @Default("") String audioFile,
  }) = _PlayerCardState;
}
