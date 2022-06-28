import 'package:flutter/material.dart';
import 'package:gymmy_mobile/presentation/pages/register_page.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_dots_indicator.dart';

import '../utils/gymmy_colors.dart';
import 'login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: GymmyColors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: const [
                    LoginPage(),
                    RegisterPage(),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: GymmyDotsIndicator(
                    color: GymmyColors.greyLight,
                    controller: _controller,
                    itemCount: 2,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
