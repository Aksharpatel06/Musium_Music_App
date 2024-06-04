import 'package:flutter/material.dart';
import 'componects/app_bar.dart';
import 'componects/continue_listings.dart';

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
              continueListings(height,width),
            ],
          ),
        ),
      ),
    );
  }
}
