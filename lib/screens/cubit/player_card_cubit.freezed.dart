// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerCardState {

 dynamic get isLoading; PlayerController? get playerController; String get audioFile;
/// Create a copy of PlayerCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCardStateCopyWith<PlayerCardState> get copyWith => _$PlayerCardStateCopyWithImpl<PlayerCardState>(this as PlayerCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerCardState&&const DeepCollectionEquality().equals(other.isLoading, isLoading)&&(identical(other.playerController, playerController) || other.playerController == playerController)&&(identical(other.audioFile, audioFile) || other.audioFile == audioFile));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(isLoading),playerController,audioFile);

@override
String toString() {
  return 'PlayerCardState(isLoading: $isLoading, playerController: $playerController, audioFile: $audioFile)';
}


}

/// @nodoc
abstract mixin class $PlayerCardStateCopyWith<$Res>  {
  factory $PlayerCardStateCopyWith(PlayerCardState value, $Res Function(PlayerCardState) _then) = _$PlayerCardStateCopyWithImpl;
@useResult
$Res call({
 dynamic isLoading, PlayerController? playerController, String audioFile
});



}
/// @nodoc
class _$PlayerCardStateCopyWithImpl<$Res>
    implements $PlayerCardStateCopyWith<$Res> {
  _$PlayerCardStateCopyWithImpl(this._self, this._then);

  final PlayerCardState _self;
  final $Res Function(PlayerCardState) _then;

/// Create a copy of PlayerCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = freezed,Object? playerController = freezed,Object? audioFile = null,}) {
  return _then(_self.copyWith(
isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as dynamic,playerController: freezed == playerController ? _self.playerController : playerController // ignore: cast_nullable_to_non_nullable
as PlayerController?,audioFile: null == audioFile ? _self.audioFile : audioFile // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _PlayerCardState implements PlayerCardState {
  const _PlayerCardState({this.isLoading = false, this.playerController, this.audioFile = ""});
  

@override@JsonKey() final  dynamic isLoading;
@override final  PlayerController? playerController;
@override@JsonKey() final  String audioFile;

/// Create a copy of PlayerCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerCardStateCopyWith<_PlayerCardState> get copyWith => __$PlayerCardStateCopyWithImpl<_PlayerCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerCardState&&const DeepCollectionEquality().equals(other.isLoading, isLoading)&&(identical(other.playerController, playerController) || other.playerController == playerController)&&(identical(other.audioFile, audioFile) || other.audioFile == audioFile));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(isLoading),playerController,audioFile);

@override
String toString() {
  return 'PlayerCardState(isLoading: $isLoading, playerController: $playerController, audioFile: $audioFile)';
}


}

/// @nodoc
abstract mixin class _$PlayerCardStateCopyWith<$Res> implements $PlayerCardStateCopyWith<$Res> {
  factory _$PlayerCardStateCopyWith(_PlayerCardState value, $Res Function(_PlayerCardState) _then) = __$PlayerCardStateCopyWithImpl;
@override @useResult
$Res call({
 dynamic isLoading, PlayerController? playerController, String audioFile
});



}
/// @nodoc
class __$PlayerCardStateCopyWithImpl<$Res>
    implements _$PlayerCardStateCopyWith<$Res> {
  __$PlayerCardStateCopyWithImpl(this._self, this._then);

  final _PlayerCardState _self;
  final $Res Function(_PlayerCardState) _then;

/// Create a copy of PlayerCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = freezed,Object? playerController = freezed,Object? audioFile = null,}) {
  return _then(_PlayerCardState(
isLoading: freezed == isLoading ? _self.isLoading! : isLoading ,playerController: freezed == playerController ? _self.playerController : playerController // ignore: cast_nullable_to_non_nullable
as PlayerController?,audioFile: null == audioFile ? _self.audioFile : audioFile // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
