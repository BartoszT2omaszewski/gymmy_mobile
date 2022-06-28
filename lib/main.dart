import 'package:flutter/material.dart';
import 'package:gymmy_mobile/presentation/pages/auth_page.dart';
import 'package:gymmy_mobile/presentation/utils/gymmy_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gymmy',
      theme: GymmyTheme.lightTheme,
      home: const AuthPage(),
    );
  }
}
