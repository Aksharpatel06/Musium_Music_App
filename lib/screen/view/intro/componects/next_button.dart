import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getNextButton(BuildContext context, double width, double height) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed('/home');
      },
      child: Container(
        width: width * 0.9,
        height: height * 0.08,
        decoration: ShapeDecoration(
          color: Colors.cyan.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          // shadows:  [
          //   BoxShadow(
          //     color: primaryColor,
          //     blurRadius: 10,
          //     spreadRadius: 0.50,
          //   )
          // ],
        ),
        child: Center(
          child: Text(
            'Get Started',
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    ),
  );
}
