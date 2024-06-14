import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_booster/screen/provider/audio_player_provider.dart';
import '../../../../utils/color_list.dart';

Column lyricsTitle(double height, AudioPlayerProvider audioProvider) {
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [
                const Color(0xFF39C0D4),
                primaryColor,
                const Color(0xFF7BEEFF),
              ],
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
            audioProvider
                .homeModalList[audioProvider.audioSongPlayerIndex].lyrics!,
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    ],
  );
}
