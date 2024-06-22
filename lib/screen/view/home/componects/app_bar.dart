import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row homeAppBar(double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('asset/img/intro/img.jpg'),
          ),
          SizedBox(
            width: width * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back !',
                style: GoogleFonts.josefinSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const Text(
                'Akshar Patel',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        width: width*0.304,
        child: Row(
          children: [
            const Icon(Icons.equalizer),
            SizedBox(
              width: width * 0.05,
            ),
            const Icon(Icons.notifications),
            SizedBox(
              width: width * 0.05,
            ),
            const Icon(Icons.settings),
          ],
        ),
      ),
    ],
  );
}
