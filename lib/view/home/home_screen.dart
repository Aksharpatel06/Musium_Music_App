import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'componects/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.height, this.width});

  final dynamic height, width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              homeAppBar(width),
              SizedBox(
                height: height*0.04,
              ),
              Text(
                'Continue Listings',
                style: GoogleFonts.josefinSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
