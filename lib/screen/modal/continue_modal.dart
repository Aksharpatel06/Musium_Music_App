import 'package:flutter/material.dart';

class HomeModal{
  String img;
  String name;
  Color? color;

  HomeModal({required this.img,required this.name,this.color});

  factory HomeModal.setdata(Map m1)
  {
    return HomeModal(img: m1['img'], name: m1['name'],color: m1['color']);
  }
}