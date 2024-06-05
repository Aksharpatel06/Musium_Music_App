import 'dart:async';

import 'package:flutter/material.dart';

import 'componets/app_logo.dart';
import 'componets/app_name.dart';

class SpleshScreen extends StatelessWidget {
   const SpleshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/intro');
    });
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // APP LOGO
            appLogo(height),

            // APP NAME
            appName(),
          ],
        ),
      ),
    );
  }
}