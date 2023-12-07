import 'package:flutter/material.dart';
import 'package:football_quiz/core/custom_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/splash.png',
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Column(
              children: [
                const Spacer(),
                Image.asset('assets/ball.png'),
                const Spacer(),
                Text(
                  'FOOTBALL QUIZ',
                  style:
                      context.textTheme.titleLarge?.copyWith(letterSpacing: 5),
                ),
                const SizedBox(height: 36),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
