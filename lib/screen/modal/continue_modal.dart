import 'package:flutter/material.dart';

class HomeModal{
  String img;
  String name;
  Color? color;
  String? audioName;

  HomeModal({required this.img,required this.name,this.color,this.audioName});

  factory HomeModal.setdata(Map m1)
  {
    return HomeModal(img: m1['img'], name: m1['name'],color: m1['color'],audioName: m1['song']);
  }
}