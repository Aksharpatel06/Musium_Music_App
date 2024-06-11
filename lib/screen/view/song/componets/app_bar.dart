import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row songAppBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CupertinoButton(
        padding: EdgeInsets.zero,
        child: const Icon(Icons.arrow_back_outlined),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Icon(
          Icons.menu,
        ),
      ),
    ],
  );
}
