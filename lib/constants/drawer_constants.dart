import 'package:flutter/material.dart';

class DrawerModel {
  String title;
  IconData icon;
  DrawerModel({required this.title, required this.icon});
}

List<DrawerModel> drawerItems = [
  DrawerModel(title: 'Home', icon: Icons.home),
  DrawerModel(title: 'Explore', icon: Icons.explore),
  DrawerModel(title: 'Sales Dashboard', icon: Icons.stacked_bar_chart),
  DrawerModel(title: 'Challanges', icon: Icons.shape_line),
  DrawerModel(title: 'Knowledge Center', icon: Icons.school_sharp),
];
