import 'package:flutter/material.dart';
import 'package:piano_project/views/homescreen.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}