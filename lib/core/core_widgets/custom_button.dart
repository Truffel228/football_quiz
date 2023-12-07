import 'package:flutter/material.dart';
import 'package:football_quiz/core/custom_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.width,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: context.theme.primaryColor,
        width: width ?? MediaQuery.of(context).size.width * 0.5,
        height: 60,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
