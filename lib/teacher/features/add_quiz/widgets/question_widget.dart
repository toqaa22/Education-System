import 'package:education_system/teacher/features/add_quiz/widgets/question_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../models/question_model.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;

  const QuestionWidget(  this.question, {super.key}) ;

  @override
  QuestionWidgetState createState() => QuestionWidgetState();
}

class QuestionWidgetState extends State<QuestionWidget> {
  String? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.5,
            child: QuestionTextField(
             hintText: "Enter Question",
              onChanged: (value) {
                setState(() {
                  widget.question.question = value;
                });
              },
            ),
          ),
          const SizedBox(height: 8.0),
          QuestionTextField(
            hintText: "Answer 1",
            onChanged: (value) {
              setState(() {
                widget.question.option1 = value;
              });
            },
          ),
          const SizedBox(height: 8.0),
          QuestionTextField(
            hintText: "Answer 2",
            onChanged: (value) {
              setState(() {
                widget.question.option2 = value;
              });
            },
          ),
          const SizedBox(height: 8.0),
          QuestionTextField(
            hintText: "Answer 3",
            onChanged: (value) {
              setState(() {
                widget.question.option3 = value;
              });
            },
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Radio(
                value: 'Option 1',
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value!;
                    widget.question.correctAnswer = value;
                  });
                },
              ),
              const Text('Option 1'),
              Radio(
                value: 'Option 2',
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                    widget.question.correctAnswer = value!;
                  });
                },
              ),
              const Text('Option 2'),
              Radio(
                value: 'Option 3',
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                    widget.question.correctAnswer = value!;
                  });
                },
              ),
              const Text('Option 3'),
            ],
          ),
        ],
      ),
    );
  }
}


