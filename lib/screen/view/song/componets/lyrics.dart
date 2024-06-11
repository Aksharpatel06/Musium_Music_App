import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column lyricsTitle(double height) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: height * 0.05,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'LYRICS',
          style: GoogleFonts.josefinSans(
            color: const Color(0xFF8A9A9D),
            fontSize: 14,
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.77,
          ),
        ),
      ),
      SizedBox(
        height: height * 0.03,
      ),
      Container(
        height: height*0.32,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF39C0D4), Color(0xFF7BEEFF)],
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Colors.black.withOpacity(0),
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          'You never look at the sky Cause you think it\'s too high You never look at the stars Cause you think they\'re too far But they\'re showing the lights to the way back home When you don\'t know where to go',
          style: GoogleFonts.josefinSans(
            color: Colors.white,
            fontSize:22,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
      ),
    ],
  );
}
