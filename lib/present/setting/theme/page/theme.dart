import 'package:flutter/material.dart';

const _primaryColor = Colors.black;

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: _primaryColor,
  textTheme: _textTheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black38,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900,
  dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(
        color: Colors.white,
      ),
      menuStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey.shade900),
      )),
  dividerTheme: DividerThemeData(
      color: Colors.grey.withOpacity(0.1)
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.white,
    secondary: Colors.grey,
    onBackground: Colors.white,
    onSurface: Colors.white,
  ),
);

final lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: _textTheme,
    primaryColor: _primaryColor,
    scaffoldBackgroundColor: Colors.grey.shade300,
    dividerTheme: DividerThemeData(
      color: Colors.black.withOpacity(0.2),
    ),
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade400,
      primary: Colors.black,
      secondary: Colors.white,
    )
);

const _textTheme = TextTheme(
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    )
);