import 'package:flutter/material.dart';
import 'package:football_quiz/core/core_widgets/custom_button.dart';
import 'package:football_quiz/core/custom_theme.dart';
import 'package:football_quiz/models/question.dart';
import 'package:football_quiz/models/quiz.dart';
import 'package:football_quiz/pages/quiz/widgets/quiz_answer_item.dart';
import 'package:football_quiz/pages/quiz/widgets/quiz_app_bar.dart';
import 'package:football_quiz/pages/quiz/widgets/quiz_stepper.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
    required this.quiz,
  });

  final Quiz quiz;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var _questionIndex = 0;

  Set<int> _wrongAnswers = {};
  int? _rightAnswer;

  bool _won = false;

  Question get _currentQuestion => widget.quiz.questions[_questionIndex];
  @override
  Widget build(BuildContext context) {
    return _won
        ? Scaffold(
            appBar: QuizAppBar(title: 'RESULT'),
            body: SafeArea(
              child: Column(
                children: [
                  const Spacer(),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/win_bg.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned.fill(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'NICE WORK',
                              style: TextStyle(
                                color: CustomTheme.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset(
                              'assets/check.png',
                              height: 120,
                              width: 120,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        title: 'PLAY AGAIN',
                        width: MediaQuery.of(context).size.width * 0.7,
                        onTap: () {
                          setState(() {
                            _won = false;
                            _questionIndex = 0;
                            _rightAnswer = null;
                            _wrongAnswers.clear();
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: context.theme.primaryColor),
                          ),
                          height: 60,
                          alignment: Alignment.center,
                          child: Text(
                            'GO TO MAIN',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: context.theme.primaryColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: QuizAppBar(title: widget.quiz.title),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    QuizStepper(
                      length: widget.quiz.questions.length,
                      currentIndex: _questionIndex,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      _currentQuestion.question,
                      style: context.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    ...List.generate(
                      _currentQuestion.answers.length,
                      (index) {
                        final answer = _currentQuestion.answers[index];

                        return QuizAnswerItem(
                          title: answer,
                          onTap: () => _onAnswerTap(index),
                          state: _wrongAnswers.contains(index)
                              ? AnswerState.wrong
                              : _rightAnswer == index
                                  ? AnswerState.right
                                  : AnswerState.regular,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      title: 'CONTINUE',
                      onTap: _onContinueTap,
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  void _onAnswerTap(int index) {
    if (index == _currentQuestion.rightAnswerIndex) {
      setState(() {
        _rightAnswer = index;
      });
      return;
    }

    setState(() {
      _wrongAnswers.add(index);
    });
  }

  void _onContinueTap() {
    if (_rightAnswer == null) {
      return;
    }

    if (_questionIndex == widget.quiz.questions.length - 1) {
      setState(() {
        _won = true;
      });
      return;
    }

    setState(() {
      _questionIndex++;
      _rightAnswer = null;
      _wrongAnswers.clear();
    });
  }
}
