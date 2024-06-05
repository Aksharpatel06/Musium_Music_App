import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column textHeading(double width, double height) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'From the latest to the greatest hits, play your favorite tracks onmusium now!',
          textAlign: TextAlign.center,
          style: GoogleFonts.josefinSans(
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      SizedBox(
        height: height*0.1,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.2,
            height: height * 0.01,
            decoration: ShapeDecoration(
              color: const Color(0xFF00C2CB),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 1, color: Color(0xFF121111)),
                borderRadius: BorderRadius.circular(50),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          Container(
            width: width * 0.2,
            height: height * 0.01,
            decoration: ShapeDecoration(
              color: const Color(0xFFDAE7E7),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 1, color: Color(0xFF121111)),
                borderRadius: BorderRadius.circular(50),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
