import 'package:flutter/material.dart';

import 'gymmy_colors.dart';

class GymmyTheme {
  static ThemeData get lightTheme {
    const TextTheme textTheme = TextTheme(
      /// used for text inside buttons
      headline6: TextStyle(
        color: GymmyColors.white,
        fontFamily: 'Poppins',
      ),
    );

    const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
      focusColor: GymmyColors.red,
      filled: false,
      alignLabelWithHint: false,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      floatingLabelStyle: TextStyle(color: GymmyColors.red),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: GymmyColors.red),
      ),
    );

    const TextSelectionThemeData textSelectionThemeData =
        TextSelectionThemeData(
      cursorColor: GymmyColors.red,
      selectionColor: GymmyColors.orange,
      selectionHandleColor: GymmyColors.orange,
    );

    return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: GymmyColors.red,
      backgroundColor: GymmyColors.white,
      textTheme: textTheme,
      textSelectionTheme: textSelectionThemeData,
      inputDecorationTheme: inputDecorationTheme,
    );
  }
}
