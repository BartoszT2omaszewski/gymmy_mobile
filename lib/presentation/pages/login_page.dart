import 'package:flutter/material.dart';
import 'package:gymmy_mobile/presentation/utils/gymmy_colors.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_circle_button.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_elevated_button.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_text_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: GymmyColors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(child: SizedBox()),
                Align(
                  alignment: Alignment.center,
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => GymmyColors.primaryGradient
                        .createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                    child: const Text(
                      'GYMMY',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'Enter e-mail',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: GymmyTextButton(
                    simpleText: 'Forgot password? ',
                    boldText: 'Press here!',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 16),
                GymmyElevatedButton(
                  text: 'Login',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                // const Divider(color: GymmyColors.greyLight),
                Center(
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) =>
                        GymmyColors.primaryGradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: const Text(
                      'or',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GymmyCircleButton(onPressed: () {}),
                    GymmyCircleButton(onPressed: () {}),
                    GymmyCircleButton(onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 16),
                GymmyTextButton(
                  simpleText: 'No account? ',
                  boldText: 'Create one here!',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ));
  }
}
