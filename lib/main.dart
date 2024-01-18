import 'package:education_system/shared/utils/colors.dart';
import 'package:education_system/student/home_page/student_home_page.dart';
import 'package:flutter/material.dart';
import "package:flutter_localizations/flutter_localizations.dart";

import 'components/locale/applocale.dart';
import 'shared/constants.dart';



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
      home:  const StudentHomePage(),
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", ""),
        Locale("ar", ""),
      ],
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },
      locale:  Locale(lang),
    );
  }
}
