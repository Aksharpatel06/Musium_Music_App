import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/global_vaiable.dart';
import '../../../../utils/top_mixes_list.dart';
import '../../../modal/continue_modal.dart';

Column topMixes(double height, double width) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: height * 0.04,
      ),
      Text(
        'Your Top Mixes',
        style: GoogleFonts.josefinSans(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      SizedBox(
        height: height * 0.015,
      ),
      SizedBox(
        height: height*0.25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: TopMixesList.length,
          itemBuilder: (context, index) {
            homeModal = HomeModal.setdata(TopMixesList[index]);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.42,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: homeModal!.color!, width: height * 0.005)),
                      image: DecorationImage(
                        image: AssetImage(homeModal!.img),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      homeModal!.name,
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
