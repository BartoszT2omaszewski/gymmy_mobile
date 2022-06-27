import 'package:flutter/material.dart';
import 'package:gymmy_mobile/presentation/utils/gymmy_colors.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_circle_button.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_elevated_button.dart';
import 'package:gymmy_mobile/presentation/widgets/gymmy_text_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Repeat password',
                    hintText: 'Repeat password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                GymmyElevatedButton(
                  text: 'Register',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                const Divider(color: GymmyColors.greyLight),
                const SizedBox(height: 16),
                GymmyTextButton(
                  simpleText: 'Already have an account? ',
                  boldText: 'Login here!',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ));
  }
}
