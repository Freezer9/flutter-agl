import 'package:flutter_ics_homescreen/export.dart';

class PlaylistEntry {
  final String title;
  final String album;
  final String artist;
  final String file;
  final Duration duration;
  final int position;

  const PlaylistEntry(
      {required this.title,
      required this.album,
      required this.artist,
      required this.file,
      required this.duration,
      required this.position});
}

class PlaylistNotifier extends Notifier<List<PlaylistEntry>> {
  @override
  List<PlaylistEntry> build() {
    return [];
  }

  void update({required List<PlaylistEntry> newPlaylist}) {
    state = newPlaylist;
  }

  void add(PlaylistEntry entry) {
    state.add(entry);
  }

  void clear() {
    state = [];
  }
}
