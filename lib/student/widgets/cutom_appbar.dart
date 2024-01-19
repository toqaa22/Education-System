import 'package:education_system/student/features/my_subjects/my_subjects_page.dart';
import 'package:flutter/material.dart';

import '../../components/locale/applocale.dart';
import '../../shared/main_cubit/main_cubit.dart';
import '../../shared/utils/colors.dart';
import '../features/my_grades/view/my_grades_page.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsAsset.kLight2,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile purple.png"),
          ),
          TextButton(
            onPressed: () {
              if (MainCubit.get(context).lang == "en") {
                MainCubit.get(context).changeLang('ar');
              } else {
                MainCubit.get(context).changeLang('en');
              }
            },
            child: Text(
              '${getLang(context, "Change Language")}',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '${getLang(context, "Student Name")}',
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(width: 50),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MySubjectsPage(),
              ));
            },
            child: Text(
              '${getLang(context, "My Subjects")}',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            ),
          ),
          const SizedBox(width: 5),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyGradesPage(),
              ));
            },
            child: Text(
              '${getLang(context, "My Grades")}',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            ),
          ),
          const SizedBox(width: 5),
          TextButton(
            onPressed: () {},
            child: Text(
              '${getLang(context, "Assignments")}',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: ColorsAsset.kPrimary),
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset("assets/images/logo2.png"),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
