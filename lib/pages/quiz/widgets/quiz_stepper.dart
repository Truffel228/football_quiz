import 'package:flutter/material.dart';
import 'package:football_quiz/core/custom_theme.dart';

class QuizStepper extends StatelessWidget {
  const QuizStepper({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  final int length;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        length,
        (index) {
          return Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 3,
              margin: EdgeInsets.only(right: index != length - 1 ? 8 : 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: index <= currentIndex
                    ? context.theme.primaryColor
                    : CustomTheme.greyLight,
              ),
            ),
          );
        },
      ),
    );
  }
}