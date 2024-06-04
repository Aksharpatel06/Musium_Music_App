import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/color_list.dart';

BorderedText appName() {
  return BorderedText(
    strokeWidth: 1,
    child: Text(
      'musium',
      style: GoogleFonts.josefinSans(
        fontSize: 50,
        fontWeight: FontWeight.w900,
        color: primaryColor,
      ),
    ),
  );
}