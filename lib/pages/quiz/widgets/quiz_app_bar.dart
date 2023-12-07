import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:football_quiz/core/custom_theme.dart';

class QuizAppBar extends StatelessWidget implements PreferredSize {
  const QuizAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: UnconstrainedBox(
          child: SvgPicture.asset('assets/arrow_back.svg'),
        ),
      ),
      title: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: CustomTheme.black,
          fontSize: 13,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  @override
  Widget get child => const SizedBox();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
