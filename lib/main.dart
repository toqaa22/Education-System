import 'package:education_system/shared/main_cubit/main_cubit.dart';
import 'package:education_system/shared/utils/colors.dart';
import 'package:education_system/teacher/features/home/teacher_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter_localizations/flutter_localizations.dart";

import 'components/locale/applocale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(
                  color: ColorsAsset.kbackgorund
                )
              ),
              expansionTileTheme: ExpansionTileThemeData(
                  backgroundColor: ColorsAsset.kLightPurble,
                  childrenPadding: const EdgeInsets.all(10),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:   const TeacherHomePage(),
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
            locale: Locale(MainCubit.get(context).lang),
          );
        },
      ),
    );
  }
}
