import 'package:flutter/material.dart';
import 'componects/app_bar.dart';
import 'componects/continue_listings.dart';
import 'componects/top_mixes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              homeAppBar(width),
              continueListings(height, width),
              topMixes(height, width),
            ],
          ),
        ),
      ),
    );
  }
}
