class Question {
  const Question({
    required this.question,
    required this.answers,
    required this.rightAnswerIndex,
  });

  final String question;
  final List<String> answers;
  final int rightAnswerIndex;
}
