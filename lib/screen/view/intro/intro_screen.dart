import 'package:flutter/material.dart';
import 'componects/next_button.dart';
import 'componects/text_heading.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff00a4bc),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'asset/img/intro/img_girl.png',
              fit: BoxFit.cover,
            ),
            Container(
              width: width,
              height: height * 0.511,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textHeading(width, height),
                    getNextButton(context, width, height),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}