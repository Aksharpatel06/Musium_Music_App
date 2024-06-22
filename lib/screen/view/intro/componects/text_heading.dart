import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_booster/utils/color_list.dart';

Column textHeading(double width, double height,BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'From the ',
            style: GoogleFonts.josefinSans(
              fontSize: 29,
              height:1.5,
              fontWeight: FontWeight.w900,
            ),
            children: <TextSpan>[
              TextSpan(text: 'latest ', style: TextStyle(fontWeight: FontWeight.bold,color: primaryColor)),
              const TextSpan(text: 'to the '),
              TextSpan(text: 'greatest ',style: TextStyle(fontWeight: FontWeight.bold,color: primaryColor)),
              const TextSpan(text: 'hits, play your favorite tracks on '),
              TextSpan(text:
                  'musium ',
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w900,
                    color: primaryColor,
                  ),
                ),
              const TextSpan(text: 'now! '),
            ],
          ),
        ),
      ),
      SizedBox(
        height: height*0.03,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.2,
            height: height * 0.01,
            decoration: ShapeDecoration(
              color:primaryColor,
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
