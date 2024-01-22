import 'package:education_system/shared/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../add_lesson/view/add_lesson_page.dart';
import '../../add_quiz/view/add_quiz_page.dart';

class MaterialDoalog extends StatelessWidget {
  const MaterialDoalog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuestionPage(),));
            },
            child: Container(
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                color: ColorsAsset.kLight2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons8-quiz-50.png'),
                  const Text('Add Quiz'),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddLessonPage(),));
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: ColorsAsset.kLight2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icons8-study-50.png'),
                  const Text('Add Lesson'),
                ],
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
