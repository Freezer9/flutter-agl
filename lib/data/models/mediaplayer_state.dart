import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/data/data_providers/notifier/playlist_notifier.dart';

enum PlayState { stopped, playing, paused }

@immutable
class MediaPlayerState {
  final int playlistPosition;
  final PlayState playState;
  final PlaylistEntry? song;

  const MediaPlayerState(
      {required this.playlistPosition,
      required this.playState,
      required this.song});

  const MediaPlayerState.initial()
      : playlistPosition = -1,
        playState = PlayState.stopped,
        song = null;

  MediaPlayerState copyWith(
      {int? playlistPosition,
      PlayState? playState,
      PlaylistEntry? song,
      Duration? songPosition,
      Duration? songLength}) {
    return MediaPlayerState(
      playlistPosition: playlistPosition ?? this.playlistPosition,
      playState: playState ?? this.playState,
      song: song ?? this.song,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MediaPlayerState &&
        other.playlistPosition == playlistPosition &&
        other.playState == playState &&
        other.song == song;
  }

  @override
  int get hashCode {
    return playlistPosition.hashCode ^ playState.hashCode ^ song.hashCode;
  }
}
