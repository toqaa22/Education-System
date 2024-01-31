import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/question_model.dart';

part 'add_quiz_state.dart';

class AddQuizCubit extends Cubit<AddQuizState> {
  AddQuizCubit() : super(AddQuizInitial());
  static AddQuizCubit get(context) => BlocProvider.of(context);
  List<AddQuestionModel> questions = [];
  int selectedQuantity = 0;

  void addQuiz() {
    FirebaseFirestore.instance.collection('secondary years')
        .doc();
  }
  void generateQuestions() {
    questions.clear();
    for (int i = 0; i < selectedQuantity; i++) {
      questions.add(AddQuestionModel());
    }
    emit(AllQuizQuestionsGenerated());
  }



  Future<void> addQuiz2() async {
  FirebaseFirestore.instance
          .collection('secondary years')
          .doc('First year')
          .collection('quiz')
          .doc();
   final List<Map<String, dynamic>> questionsData = [];
    for (final questionModel in questions) {
        final Map<String, dynamic> questionData = {
          'question': questionModel.questionController.text,
          'option1': questionModel.option1Controller.text,
          'option2': questionModel.option2Controller.text,
          'option3': questionModel.option3Controller.text,
          'modelAnswer': questionModel.modelAnswer,
        };
        questionsData.add(questionData);
      }
     final Map<String, dynamic> quizData = {
        'questions': questionsData,
      };
     await FirebaseFirestore.instance
          .collection('secondary years')
          .doc('First year')
          .collection('quiz')
          .doc().set(quizData);
      emit(QuizAddedSuccessfully());

  }
}
