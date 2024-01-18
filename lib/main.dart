import 'package:education_system/shared/utils/colors.dart';
import 'package:education_system/student/view_course/view_course_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          expansionTileTheme: ExpansionTileThemeData(
              backgroundColor:  ColorsAsset.kLightPurble,
              childrenPadding: const EdgeInsets.all(10),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const ViewCoursePage(),
    );
  }
}
