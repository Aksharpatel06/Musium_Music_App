import 'package:flutter/material.dart';
import 'package:media_booster/screen/view/home/home_screen.dart';
import 'package:media_booster/screen/view/intro/intro_screen.dart';
import 'package:media_booster/screen/view/song/song_screen.dart';
import 'package:media_booster/screen/view/splesh/splesh_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SpleshScreen(),
        '/intro':(context) => const IntroScreen(),
        '/home':(context) => const HomeScreen(),
        '/song':(context) => const SongScreen(),
      },
    );
  }
}
