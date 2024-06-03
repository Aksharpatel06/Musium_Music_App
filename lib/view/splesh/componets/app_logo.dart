import 'package:flutter/material.dart';

Column appLogo(double height) {
  return Column(
    children: [
      SizedBox(
        height: height * 0.2,
      ),
      Image.asset('asset/img/app logo/musium_logo.png'),
    ],
  );
}
