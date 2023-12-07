import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:football_quiz/configure.dart';
import 'package:football_quiz/core/custom_theme.dart';
import 'package:football_quiz/notifx.dart';
import 'package:football_quiz/pages/bonus.dart';
import 'package:football_quiz/pages/categories/categories_page.dart';
import 'package:football_quiz/pages/on_board/on_board_page.dart';
import 'package:football_quiz/pages/settings/settings_page.dart';
import 'package:football_quiz/pages/splash/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 7),
    minimumFetchInterval: const Duration(seconds: 7),
  ));

  await FirebaseRemoteConfig.instance.fetchAndActivate();

  await NotificationServiceFb().activate();

  final bd = await SharedPreferences.getInstance();

  runApp(MyApp(bd: bd));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.bd});
  final SharedPreferences bd;

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: bd,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: CustomTheme.theme,
        home: const StartPage(),
      ),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late final SharedPreferences _bd;
  var _showOnBoard = false;
  var _loading = true;
  String? _bonus;

  @override
  void initState() {
    super.initState();
    _bd = context.read<SharedPreferences>();
    _init();
  }

  Future<void> _init() async {
    // await Future.delayed(const Duration(seconds: 2));
    rtt(_bd);

    final bonus = FirebaseRemoteConfig.instance.getString('bonus');

    if (!bonus.contains('isBonus')) {
      setState(() {
        _loading = false;
        _bonus = bonus;
      });
      return;
    }

    final onBoard = _bd.getBool('onBoard') ?? false;

    if (!onBoard) {
      setState(() {
        _loading = false;
        _showOnBoard = true;
      });

      return;
    }

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const SplashPage();
    }

    if (_showOnBoard) {
      return const OnBoard();
    }

    if (_bonus != null) {
      return BonusPage(bStr: _bonus!);
    }

    return const CategoriesPage();
  }
}
