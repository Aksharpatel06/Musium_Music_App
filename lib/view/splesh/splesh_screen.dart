import 'dart:async';

import 'package:flutter/material.dart';

import 'componets/app_logo.dart';
import 'componets/app_name.dart';

class SpleshScreen extends StatelessWidget {
   const SpleshScreen({super.key, this.height, this.width});

  final dynamic height, width;

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
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