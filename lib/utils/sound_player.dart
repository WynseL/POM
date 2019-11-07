import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class SoundPlayer {
  
  String _file;
  AudioPlayer _audioPlayer;
  AudioCache _audioCache;

  SoundPlayer(String file) {
    _file = file;
    _init();
  }

  void _init() {
    _audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY)
      ..setReleaseMode(ReleaseMode.STOP);
    _audioCache = AudioCache(prefix: "data/Guitars/", fixedPlayer: _audioPlayer);
  }
  

  Future<void> load() async {
    await _audioCache.load(this._file);
  }

  Future<void> play() async {
    try {
      await load();
      await _audioCache.play(this._file);
    } on PlatformException catch (ex) {
      print('Caught exception: $ex');
      _init();
      await load();
      print('re-loaded');
      _audioCache.play(this._file);
    } catch (ex, st) {
      print('Exception occured: $ex');
      print('StackTrace: $st');
    }
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
  }
}