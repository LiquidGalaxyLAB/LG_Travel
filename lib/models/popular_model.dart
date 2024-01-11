import 'package:flutter/material.dart';

class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  Color boxColor;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.boxColor,
      required this.duration,
      required this.calorie,
      required this.boxIsSelected});

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> popularDiets = [];

    popularDiets.add(PopularDietsModel(
      name: 'Blueberry Pancake',
      iconPath: 'assets/svgs/blueberry-pancake.svg',
      boxColor: const Color(0xffEEA4CE),
      level: 'Medium',
      duration: '30mins',
      calorie: '230kCal',
      boxIsSelected: true,
    ));

    popularDiets.add(PopularDietsModel(
        name: 'Salmon Nigiri',
        boxColor: const Color(0xff9DCEFF),
        iconPath: 'assets/svgs/salmon-nigiri.svg',
        level: 'Easy',
        duration: '20mins',
        calorie: '120kCal',
        boxIsSelected: true));

    return popularDiets;
  }
}
