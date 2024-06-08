import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/continue_listings_list.dart';
import '../../../../utils/global_vaiable.dart';
import '../../../modal/continue_modal.dart';

Column continueListings(double height, double width) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: height * 0.04,
      ),
      Text(
        'Continue Listings',
        style: GoogleFonts.josefinSans(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      SizedBox(
        height: height * 0.015,
      ),
      GridView.builder(
        shrinkWrap: true,
        itemCount: continueList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 70,
        ),
        itemBuilder: (context, index) {
          homeModal = HomeModal.setdata(continueList[index]);
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/song');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
              child: Card(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                          height: height * 0.08,
                          child: Image.asset(
                            homeModal!.img,
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      homeModal!.name,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ],
  );
}
