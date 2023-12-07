import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({
    super.key,
    required this.bStr,
  });
  final String bStr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(bStr),
          ),
        ),
      ),
    );
  }
}
