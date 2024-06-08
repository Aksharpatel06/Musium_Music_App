import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                    child: const Icon(CupertinoIcons.back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const Icon(
                    Icons.menu,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
