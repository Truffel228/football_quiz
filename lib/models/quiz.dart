import 'package:football_quiz/models/question.dart';

class Quiz {
  const Quiz({
    required this.category,
    required this.title,
    required this.questions,
  });

  final String category;
  final String title;
  final List<Question> questions;
}
