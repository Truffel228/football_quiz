import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:football_quiz/core/custom_theme.dart';
import 'package:football_quiz/models/app_quizes.dart';
import 'package:football_quiz/pages/news/news_page.dart';
import 'package:football_quiz/pages/quiz/quiz_page.dart';
import 'package:football_quiz/pages/settings/settings_page.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      'FOOTBALL QUIZ',
                      style: context.textTheme.titleMedium
                          ?.copyWith(letterSpacing: 5),
                    ),
                  ),
                  InkWell(
                      onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SettingsPage(),
                            ),
                          ),
                      child: SvgPicture.asset('assets/categories.svg')),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  List.generate(
                    AppQuizes.quizes.length,
                    (index) {
                      final quiz = AppQuizes.quizes[index];

                      return GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => QuizPage(quiz: quiz),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: CustomTheme.greyLight,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                quiz.category,
                                style: const TextStyle(
                                  color: CustomTheme.greyDark,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                quiz.title.toUpperCase(),
                                style: context.textTheme.titleMedium,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${quiz.questions.length} questions',
                                style: TextStyle(
                                  color: context.theme.primaryColor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )..add(
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewsPage(),
                          ),
                        ),
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/news.png'),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
