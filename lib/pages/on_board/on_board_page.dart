import 'package:flutter/material.dart';
import 'package:football_quiz/core/core_widgets/custom_button.dart';
import 'package:football_quiz/core/custom_theme.dart';
import 'package:football_quiz/pages/categories/categories_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final PageController _controller = PageController();
  late final SharedPreferences _bd;

  @override
  void initState() {
    super.initState();
    _bd = context.read<SharedPreferences>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          OnBaordItem(
            asset: 'assets/board_1.png',
            title: '🏆 Welcome to Football Quiz Haven!',
            text:
                'Are you ready to test your football knowledge and score big? Our Football Quiz app is your ultimate destination for a trivia experience like no other!',
            onTap: () {
              _controller.nextPage(
                duration: const Duration(milliseconds: 350),
                curve: Curves.ease,
              );
            },
          ),
          OnBaordItem(
            asset: 'assets/board_2.png',
            title: 'Challenge Your Brain',
            text:
                ' Exercise your football brain cells with questions that range from rookie to pro levels.',
            onTap: () async {
              await _bd.setBool('onBoard', true);
              if (!mounted) {
                return;
              }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CategoriesPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class OnBaordItem extends StatelessWidget {
  const OnBaordItem(
      {super.key,
      required this.asset,
      required this.title,
      required this.text,
      required this.onTap});
  final String asset;
  final String title;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Image.asset(
            asset,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          flex: 4,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    text,
                    style: context.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  CustomButton(
                    title: 'CONTINUE',
                    onTap: onTap,
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'By clicking to the “Continue” button, you agree to our ',
                      style: const TextStyle(
                        color: CustomTheme.grey,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms of use ',
                          style: TextStyle(color: context.theme.primaryColor),
                        ),
                        const TextSpan(
                          text: 'and ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy Restore',
                          style: TextStyle(color: context.theme.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
