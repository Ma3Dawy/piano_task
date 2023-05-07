
import 'package:flutter/cupertino.dart';

import 'build_key.dart';

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  final octave = 3;

  get octaveStartingNote => (octave * 12) % 128;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 
        final whiteKeySize = constraints.maxWidth / 7;
        final blackKeySize = whiteKeySize / 2;
      return Stack(
        children: [
          _buildWhiteKeys(whiteKeySize ),
          _buildBlackKeys(constraints.maxHeight,blackKeySize,whiteKeySize),
        ],
      );}
    );
  }
   _buildWhiteKeys(double whiteKeySize) {
  return Row(
    children: [
      PianoKey.white(
        path:'../assets/sound/s1.wav' ,
        width: whiteKeySize,
        midiNote: octaveStartingNote,
      ),
      PianoKey.white(
        path:'../assets/sound/s2.wav',
        width: whiteKeySize,
        midiNote: octaveStartingNote + 2,
      ),
      PianoKey.white(
        path:'../assets/sound/s3.wav',
        width: whiteKeySize,
        midiNote: octaveStartingNote + 4,
      ),
      PianoKey.white(
        path:'../assets/sound/s4.wav',
        width: whiteKeySize,
        midiNote: octaveStartingNote + 5,
      ),
      PianoKey.white(
        path:'../assets/sound/s5.wav',
        width: whiteKeySize,
        midiNote: octaveStartingNote + 7,
      ),
      PianoKey.white(
        path:'../assets/sound/s6.wav',
        width: whiteKeySize,
        midiNote: octaveStartingNote + 9,
      ),
      PianoKey.white(
        path:'../assets/sound/s7.wav',
        width: whiteKeySize,
        midiNote: octaveStartingNote + 11,
      )
    ],
  );
}
_buildBlackKeys(double pianoHeight, double blackKeySize, double whiteKeySize) {
  return SizedBox(
    height: pianoHeight * 0.55,
    child: Row(
      children: [
        SizedBox(
          width: whiteKeySize - blackKeySize / 2,
        ),
        PianoKey.black(
          path:'../assets/sound/s8.wav',
          width: blackKeySize,
          midiNote: octaveStartingNote + 1,
        ),
        SizedBox(
          width: whiteKeySize - blackKeySize,
        ),
        PianoKey.black(
          path:'../assets/sound/s9.wav',
          width: blackKeySize,
          midiNote: octaveStartingNote + 3,
        ),
        SizedBox(
          width: whiteKeySize,
        ),
        SizedBox(
          width: whiteKeySize - blackKeySize,
        ),
        PianoKey.black(
          path:'../assets/sound/s9.wav',
          width: blackKeySize,
          midiNote: octaveStartingNote + 6,
        ),
        SizedBox(
          width: whiteKeySize - blackKeySize,
        ),
        PianoKey.black(
          path:'../assets/sound/s10.wav',
          width: blackKeySize,
          midiNote: octaveStartingNote + 8,
        ),
        SizedBox(
          width: whiteKeySize - blackKeySize,
        ),
        PianoKey.black(
          path:'../assets/sound/s11.wav',
          width: blackKeySize,
          midiNote: octaveStartingNote + 10,
        ),
      ],
    ),
  );
}

}
