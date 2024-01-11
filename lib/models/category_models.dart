import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Delhi',
        iconPath: 'assets/svgs/sher-dor-madrasah-svgrepo-com.svg',
        boxColor: const Color(0xffC58BF2)));

    categories.add(CategoryModel(
        name: 'Paris',
        iconPath: 'assets/svgs/paris-svgrepo-com.svg',
        boxColor: const Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: 'London',
        iconPath: 'assets/svgs/london-svgrepo-com.svg',
        boxColor: const Color(0xff9DCEFF)));

    categories.add(CategoryModel(
        name: 'Madrid',
        iconPath: 'assets/svgs/madrid-cathedral-svgrepo-com.svg',
        boxColor: const Color(0xffBAE1FF)));

    categories.add(CategoryModel(
        name: 'Mumbai',
        iconPath: 'assets/svgs/gate-of-india-mumbai-svgrepo-com.svg',
        boxColor: const Color(0xffFFB3BA)));

    categories.add(CategoryModel(
        name: 'Berlin',
        iconPath: 'assets/svgs/brandenburg-gate-svgrepo-com.svg',
        boxColor: const Color(0xffFFDFBA)));

    categories.add(CategoryModel(
        name: 'Rome',
        iconPath: 'assets/svgs/pisa-svgrepo-com.svg',
        boxColor: const Color(0xffbaffc9)));

    categories.add(CategoryModel(
        name: 'Barcelona',
        iconPath: 'assets/svgs/barcelona-svgrepo-com.svg',
        boxColor: const Color(0xffffdfba)));

    return categories;
  }
}
