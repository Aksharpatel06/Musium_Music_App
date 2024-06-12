import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/continue_listings_list.dart';
import '../../../../utils/global_vaiable.dart';
import '../../../modal/continue_modal.dart';
import '../../../provider/audio_player_provider.dart';

Column continueListings(double height, double width,BuildContext context) {
  final audioProvider = Provider.of<AudioPlayerProvider>(context,listen: false);
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
      SizedBox(
        height: height*0.26,
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            countinuePageview(continueList, audioProvider, height, width),
            countinuePageview(continueLists, audioProvider, height, width),
          ],
        ),
      ),
    ],
  );
}

GridView countinuePageview(List<dynamic> list, AudioPlayerProvider audioProvider, double height, double width) {
  return GridView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 70,
      ),
      itemBuilder: (context, index) {
        homeModal = HomeModal.setdata(list[index]);
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/song');
            audioProvider.storageAudio(list,index);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
            child: Card(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                        height: height * 0.07,
                        child: Image.asset(
                          homeModal!.img,
                          fit: BoxFit.fill,
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
    );
}
