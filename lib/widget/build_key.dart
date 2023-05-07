import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum KeyColor { WHITE, BLACK }

class PianoKey extends StatelessWidget {
  final KeyColor color;
  final double width;
  final int midiNote;
  final String path;
  final player = AudioPlayer()..audioCache;

  PianoKey.white({super.key, 
    required this.width,
    required this.midiNote, required this.path,
  }) : color = KeyColor.WHITE;

  PianoKey.black({super.key, 
    required this.width,
    required this.midiNote, required this.path,
  }) : color = KeyColor.BLACK;

  /// Send a NOTE OFF message

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTapDown: (_) {
        player.stop().then((value) {
          player.play(AssetSource(path));
        });
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: color == KeyColor.WHITE ? Colors.white : Colors.black,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
      ),
    );
  }
}
