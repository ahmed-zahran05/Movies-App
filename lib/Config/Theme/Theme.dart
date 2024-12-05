import 'package:flutter/material.dart';
import 'package:movies_app/Core/Utills/ColorsManager.dart';

class AppTheme {
  static final ThemeData MyAppTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Colors.black,
      selectedItemColor: ColorsManager.selectedItem,
      unselectedItemColor: ColorsManager.unSelectedItem,
      elevation: 20,
      selectedIconTheme: IconThemeData(
        size: 36,
      ),
    ),
  );
}
