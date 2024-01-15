import 'package:flutter/material.dart';

class PlaceModel {
  String name;
  String iconPath;
  Color boxColor;

  PlaceModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  static List<PlaceModel> getPlaces() {
    List<PlaceModel> places = [];

    places.add(PlaceModel(
        name: 'Taj Mahal',
        iconPath: 'assets/monuments/taj-mahal-svgrepo-com.svg',
        boxColor: const Color(0xffffdfba)));

    places.add(PlaceModel(
        name: 'Colosseum',
        iconPath: 'assets/monuments/colosseum-rome-svgrepo-com.svg',
        boxColor: const Color(0xffbaffc9)));

    places.add(PlaceModel(
        name: 'The Great Pyramid',
        iconPath: 'assets/monuments/great-pyramid-svgrepo-com.svg',
        boxColor: const Color(0xffFFDFBA)));

    places.add(PlaceModel(
        name: 'The Great Wall of China',
        iconPath: 'assets/monuments/great-wall-svgrepo-com.svg',
        boxColor: const Color(0xffFFB3BA)));

    places.add(PlaceModel(
        name: 'Christ the Redeemer',
        iconPath:
            'assets/monuments/christ-the-redeemer-rio-de-janeiro-svgrepo-com.svg',
        boxColor: const Color(0xffBAE1FF)));

    places.add(PlaceModel(
        name: 'Petra',
        iconPath: 'assets/monuments/petra-jordan-svgrepo-com.svg',
        boxColor: const Color(0xff9DCEFF)));

    places.add(PlaceModel(
        name: 'Chichen Itza',
        iconPath: 'assets/monuments/chichen-itza-svgrepo-com.svg',
        boxColor: const Color(0xff92A3FD)));

    places.add(PlaceModel(
        name: 'Machu Picchu',
        iconPath: 'assets/monuments/peru-machu-picchu-svgrepo-com.svg',
        boxColor: const Color(0xffC58BF2)));

    return places;
  }
}
