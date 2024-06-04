import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_booster/screen/modal/continue_modal.dart';
import 'package:media_booster/utils/continue_listings_list.dart';
import '../../../utils/global_vaiable.dart';
import 'componects/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.height, this.width});

  final dynamic height, width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              homeAppBar(width),
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
                itemCount: ContinueList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 70),
                itemBuilder: (context, index) {
                  continueModal = ContinueModal.setdata(ContinueList[index]);
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                                height: height * 0.08,
                                child: Image.asset(continueModal!.img,fit: BoxFit.cover,)),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            continueModal!.name,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.josefinSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
