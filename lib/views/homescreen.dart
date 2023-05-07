import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:piano_project/widget/piano_sound.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final player = AudioPlayer()..audioCache;
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Piano(),
    );
  }
}
