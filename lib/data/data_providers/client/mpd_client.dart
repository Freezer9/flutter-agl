import 'package:dart_mpd/dart_mpd.dart' as api;
import 'package:flutter_ics_homescreen/export.dart';
import '../notifier/playlist_notifier.dart';

class ArtStateEntry {
  bool reading = false;
  bool read = false;

  ArtStateEntry({required this.reading, required this.read});
}

class MpdClient {
  final MpdConfig config;
  final Ref ref;
  late api.MpdClient eventClient;
  late api.MpdClient client;
  Map<int, ArtStateEntry> artState = {};

  MpdClient({required this.config, required this.ref}) {
    debugPrint("Connecting to MPD at ${config.hostname}:${config.port}");
    client = api.MpdClient(
        connectionDetails: api.MpdConnectionDetails(
            host: config.hostname,
            port: config.port,
            timeout: const Duration(minutes: 2)),
        onConnect: () => handleConnect(),
        onDone: () => handleDone(),
        onError: (e, st) => handleError(e, st));

    // Second client instance to keep running in idle state to receive
    // events
    eventClient = api.MpdClient(
        connectionDetails: api.MpdConnectionDetails(
            host: config.hostname,
            port: config.port,
            timeout: const Duration(minutes: 2)),
        onConnect: () => handleConnect(),
        onDone: () => handleDone(),
        onError: (e, st) => handleError(e, st));
  }

  void run() async {
    var idleEvents = <api.MpdSubsystem>{
      api.MpdSubsystem.database,
      api.MpdSubsystem.playlist,
      api.MpdSubsystem.player
    };
    bool done = false;
    while (!done) {
      //debugPrint("Calling MPD idle!");
      var events = await eventClient.idle(idleEvents);
      for (var event in events) {
        switch (event) {
          case api.MpdSubsystem.database:
            //debugPrint("Got MPD database event");
            await handleDatabaseEvent();
            break;
          case api.MpdSubsystem.playlist:
            //debugPrint("Got MPD queue event");
            await handleQueueEvent();
            break;
          case api.MpdSubsystem.player:
            //debugPrint("Got MPD player event");
            await handlePlayerEvent();
            break;
          default:
            break;
        }
      }
    }
  }

  void handleConnect() {
    debugPrint("Connected to MPD!");
  }

  void handleResponse(api.MpdResponse response) {
    debugPrint('Got MPD response $response');
  }

  void handleDone() {
    debugPrint('Got MPD done!');
  }

  void handleError(Object e, StackTrace st) {
    debugPrint('ERROR:\n$st');
  }

  // Idle state event handlers

  Future handleDatabaseEvent() async {
    eventClient.clear();
    eventClient.add("/");
  }

  Future handleQueueEvent() async {
    ref.read(playlistProvider.notifier).clear();
    artState.clear();
    ref.read(playlistArtProvider.notifier).clear();
    ref.read(mediaPlayerStateProvider.notifier).reset();

    var songs = await eventClient.playlistinfo();
    for (var song in songs) {
      //debugPrint("Got song ${song.title} - ${song.artist} at pos ${song.pos}");
      int position = 0;
      if (song.pos != null) {
        position = song.pos!;
      } else {
        //debugPrint("WARNING: song has no position in queue, ignoring");
        continue;
      }
      String title = "";
      if (song.title != null) {
        title = song.title!.join(" ");
      } else {
        // Just use filename
        title = song.file;
      }
      String album = "";
      if (song.album != null) {
        album = song.album!.join(" ");
      }
      String artist = "";
      if (song.artist != null) {
        artist = song.artist!.join(" ");
      }
      Duration duration = Duration.zero;
      if (song.duration != null) {
        duration = song.duration!;
      }
      //debugPrint(
      //    "Got playlist entry \"$title\" - \"$album\" - \"$artist\" at $position");

      if (position == 0) {
        ref.read(mediaPlayerStateProvider.notifier).updateCurrent(PlaylistEntry(
            title: title,
            album: album,
            artist: artist,
            file: song.file,
            duration: duration,
            position: position));

        if (song.file.isNotEmpty) {
          readSongArt(position, song.file);
        }
      }
      ref.read(playlistProvider.notifier).add(PlaylistEntry(
          title: title,
          album: album,
          artist: artist,
          file: song.file,
          duration: duration,
          position: position));
    }
  }

  Future handlePlayerEvent() async {
    String songFile = "";
    int songPosition = -1;
    var song = await eventClient.currentsong();
    if (song != null) {
      //debugPrint(
      //    "Player event: song ${song.title} - ${song.artist} at pos ${song.pos}");
      if (song.pos != null) {
        songPosition = song.pos!;
      }
      if (songPosition < 0) {
        debugPrint("WARNING: song has no position in queue, ignoring");
        return;
      }
      String title = "";
      if (song.title != null) {
        title = song.title!.first;
      } else {
        // Just use filename
        title = song.file;
      }
      String album = "";
      if (song.album != null) {
        album = song.album!.first;
      }
      String artist = "";
      if (song.artist != null) {
        artist = song.artist!.first;
      }
      Duration duration = Duration.zero;
      if (song.duration != null) {
        duration = song.duration!;
      }
      songFile = song.file;
      //debugPrint(
      //    "Got song \"$title\" - \"$album\" - \"$artist\" at $songPosition, file \"$songFile\"");
      ref.read(mediaPlayerStateProvider.notifier).updateCurrent(PlaylistEntry(
          title: title,
          album: album,
          artist: artist,
          file: songFile,
          duration: duration,
          position: songPosition));
    }

    var status = await eventClient.status();
    if (status.elapsed != null) {
      //debugPrint("Using elapsed time ${status.elapsed} s");
      ref
          .read(mediaPlayerPositionProvider.notifier)
          .set(Duration(milliseconds: (status.elapsed! * 1000.0).toInt()));
    }
    PlayState playState = PlayState.stopped;
    if (status.state != null) {
      switch (status.state!) {
        case api.MpdState.stop:
          //debugPrint("status.state = stop");
          playState = PlayState.stopped;
          ref.read(mediaPlayerPositionProvider.notifier).pause();
          break;
        case api.MpdState.play:
          //debugPrint("status.state = play");
          playState = PlayState.playing;
          ref.read(mediaPlayerPositionProvider.notifier).play();
          break;
        case api.MpdState.pause:
          //debugPrint("status.state = paused");
          playState = PlayState.paused;
          ref.read(mediaPlayerPositionProvider.notifier).pause();
          break;
        default:
          break;
      }
      ref.read(mediaPlayerStateProvider.notifier).updatePlayState(playState);
    }

    if (playState != PlayState.playing) {
      // No need to attempt to load art, exit
      return;
    }

    if (!artState.containsKey(songPosition) ||
        !(artState[songPosition]!.read || artState[songPosition]!.reading)) {
      if (songFile.isNotEmpty) {
        readSongArt(songPosition, songFile);
      } else {
        // Do not attempt any fallback for providing the art for now
        debugPrint("No file for position $songPosition, no art");
        artState[songPosition] = ArtStateEntry(reading: false, read: true);
        ref
            .read(playlistArtProvider.notifier)
            .update(songPosition, Uint8List(0));
      }
    }
  }

  void readSongArt(int position, String file) async {
    int offset = 0;
    int size = 0;
    List<int> bytes = [];

    if (artState.containsKey(position)) {
      if (artState[position]!.reading) {
        return;
      } else {
        //debugPrint("Reading art for position $position");
        artState[position]!.reading = true;
      }
    } else {
      artState[position] = ArtStateEntry(reading: true, read: false);
    }
    debugPrint("Reading art for \"$file\"");

    bool first = true;
    do {
      //debugPrint("Reading, offset = $offset, size = $size");
      api.MpdImage? chunk = null;
      try {
        chunk = await client.readpicture(file, offset);
      } catch (e) {
        debugPrint(e.toString());
        chunk = null;
      }
      if (chunk != null) {
        if (chunk.size != null) {
          if (chunk.size == 0) {
            if (first) {
              // No art, exit
              break;
            }
          }
          size = chunk.size!;
        }
        // else unexpected error

        if (chunk.bytes.isNotEmpty) {
          //debugPrint("Got ${chunk.bytes.length} bytes of album art");
          bytes = bytes + chunk.bytes;
          offset += chunk.bytes.length;
        } else {
          break;
        }
      }
    } while (offset < size);
    //debugPrint("Done, offset = $offset, size = $size");

    if (offset == size) {
      debugPrint("Read $size bytes of album art for $file");
    } else {
      // else error, leave art empty
      bytes.clear();
    }

    artState[position]!.read = true;
    artState[position]!.reading = false;
    ref
        .read(playlistArtProvider.notifier)
        .update(position, Uint8List.fromList(bytes));
  }

  // Player commands

  void play() async {
    var playState = ref.read(mediaPlayerStateProvider
        .select((mediaplayer) => mediaplayer.playState));
    if (playState == PlayState.stopped) {
      int position = ref.read(mediaPlayerStateProvider
          .select((mediaplayer) => mediaplayer.playlistPosition));
      //debugPrint("Calling MPD play, position = $position");
      if (position >= 0) {
        client.play(position);
      }
    } else if (playState == PlayState.paused) {
      client.pause(false);
    }
  }

  void pause() async {
    if (ref.read(mediaPlayerStateProvider
            .select((mediaplayer) => mediaplayer.playState)) ==
        PlayState.playing) {
      client.pause(true);
    }
  }

  void next() async {
    if (ref.read(mediaPlayerStateProvider
            .select((mediaplayer) => mediaplayer.playState)) ==
        PlayState.playing) {
      client.next();
    }
  }

  void previous() async {
    if (ref.read(mediaPlayerStateProvider
            .select((mediaplayer) => mediaplayer.playState)) ==
        PlayState.playing) {
      client.previous();
    }
  }

  void seek(int milliseconds) async {
    client.seekcur((milliseconds / 1000.0).toString());
  }

  void fastForward(int milliseconds) async {
    if (milliseconds > 0) {
      client.seekcur("+${(milliseconds / 1000.0).toString()}");
    }
  }

  void rewind(int milliseconds) async {
    if (milliseconds > 0) {
      client.seekcur("-${(milliseconds / 1000.0).toString()}");
    }
  }

  void pickTrack(int position) async {
    if (position >= 0) {
      client.play(position);
    }
  }

  void loopPlaylist(bool loop) async {}
}
