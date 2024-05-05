import 'dart:async';

import 'package:audioplayers/audioplayers.dart';

class Audio {
  static AudioCache player = AudioCache();

  //
  // Initialization.  We pre-load all sounds.
  //
  static Future<dynamic> init() async {
    await player.loadAll([
      'audio/swap.wav',
      'audio/move_down.wav',
      'audio/bomb.wav',
      'audio/game_start.wav',
      'audio/win.wav',
      'audio/lost.wav',
    ]);
  }

  static play() async {
    AudioPlayer player = AudioPlayer();
    await player.play(AssetSource('assets/audio/swap.wav'));
  }

  static playAsset(AudioType audioType) {
    AudioPlayer player = AudioPlayer();

    player.play(AssetSource('audio/${audioType.name}.wav'));
  }
}

enum AudioType {
  swap,
  move_down,
  bomb,
  game_start,
  win,
  lost,
}
