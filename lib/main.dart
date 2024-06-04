import 'package:flutter/material.dart';
import 'package:media_booster/screen/view/home/home_screen.dart';
import 'package:media_booster/screen/view/splesh/splesh_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SpleshScreen(height: height,width: width,),
        '/home':(context) => HomeScreen(height: height,width: width,),
      },
    );
  }
}
