import 'package:flutter/material.dart';

import '../upload_material/view/add_material_page.dart';

class TeacherRowList {
  final String title;
  final IconData icon;
  final Widget Function() widgetBuilder;
  bool isSelected;
  dynamic Function(BuildContext)? onTap;

  TeacherRowList({
    this.isSelected = false,
    required this.widgetBuilder,
    required this.icon,
    required this.title,
    required dynamic Function(BuildContext) onTap,
  });

  static List<TeacherRowList> rowList = [
    TeacherRowList(
      isSelected: true,
      widgetBuilder: () =>   const AddMaterialPage(),
      icon: Icons.file_copy_outlined,
      title: "Upload Material",
      onTap: (context) {},
    ),
    TeacherRowList(
      widgetBuilder: () =>    const SizedBox(),
      icon: Icons.class_outlined,
      title: "View Students",
      onTap: (context) {},
    ),


  ];
}
