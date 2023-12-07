import 'package:flutter/material.dart';
import 'package:football_quiz/core/custom_theme.dart';

enum AnswerState {
  regular,
  wrong,
  right,
}

class QuizAnswerItem extends StatelessWidget {
  const QuizAnswerItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.state,
  });

  final String title;
  final VoidCallback onTap;
  final AnswerState state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _borderColor,
        ),
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(2),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: CustomTheme.greyLight,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 12,
              color: _textColor,
            ),
          ),
        ),
      ),
    );
  }

  Color get _textColor {
    switch (state) {
      case AnswerState.regular:
        return CustomTheme.black;
      case AnswerState.wrong:
        return CustomTheme.red;
      case AnswerState.right:
        return CustomTheme.primary;
    }
  }

  Color get _borderColor {
    switch (state) {
      case AnswerState.regular:
        return CustomTheme.greyLight;
      case AnswerState.wrong:
        return CustomTheme.red;
      case AnswerState.right:
        return CustomTheme.primary;
    }
  }
}
