import 'package:flutter/material.dart';
import 'package:movies_app/Core/Utills/ColorsManager.dart';

class AppTheme {
  static final ThemeData MyAppTheme = ThemeData(
    scaffoldBackgroundColor: ColorsManager.black,
    canvasColor: ColorsManager.bnBar,
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.bnBar,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor:  ColorsManager.yellow ,
      unselectedItemColor: ColorsManager.grey,
    ),
  );
}
