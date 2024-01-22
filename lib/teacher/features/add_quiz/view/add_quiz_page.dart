import 'package:education_system/shared/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../models/question_model.dart';
import '../widgets/question_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
   int? selectedQuantity;
  List<Question> questions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Quiz',
          style: TextStyle(color: ColorsAsset.kPrimary),
        ),
        backgroundColor: ColorsAsset.kLight2,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset("assets/images/logo2.png"),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: ColorsAsset.kPrimary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: DropdownButton<int>(

                value: selectedQuantity,
                hint: const Text('Select quantity'),

                onChanged: (value) {
                  setState(() {
                    selectedQuantity = value!;
                    generateQuestions();
                  });
                },
                items: List.generate(10, (index) {
                  return DropdownMenuItem<int>(
                    value: index + 1,
                    child: Text((index + 1).toString()),
                  );
                }),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return QuestionWidget(
                  questions[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void generateQuestions() {
    questions.clear();
    for (int i = 0; i < selectedQuantity!; i++) {
      questions.add(Question());
    }
  }
}



