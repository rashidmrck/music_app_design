import 'package:flutter/material.dart';
import 'screen/music_home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      title: 'MrCK Music',
      home: MusicHome(),
    );
  }
}
