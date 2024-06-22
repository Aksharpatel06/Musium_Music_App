import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/global_vaiable.dart';
import '../../../../utils/recent_listning_list.dart';
import '../../../modal/continue_modal.dart';
import '../../../provider/audio_player_provider.dart';

Column recentListning(double height, double width,BuildContext context) {
  final audioProvider = Provider.of<AudioPlayerProvider>(context,listen: false);

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Based on your recent listening',
        style: GoogleFonts.josefinSans(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      SizedBox(
        height: height * 0.015,
      ),
      SizedBox(
        height: height*0.25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recentListningList.length,
          itemBuilder: (context, index) {
            homeModal = HomeModal.setdata(recentListningList[index]);
            return CupertinoButton(
              onPressed: () {
                Navigator.pushNamed(context, '/song');
                audioProvider.storageAudio(recentListningList,index);
              },
              padding: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.2,
                      width: width * 0.42,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(homeModal!.img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
