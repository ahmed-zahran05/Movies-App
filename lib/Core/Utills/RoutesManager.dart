import 'package:flutter/material.dart';
import 'package:movies_app/Presentition/Screen/Home/HomeScreen.dart';
import 'package:movies_app/Presentition/Screen/Splash/Splash.dart';

class RoutesManager{
  static const String splash= "/splash";
  static const String home= "/home";

  static Map<String , WidgetBuilder> routes = {
    splash: (context) => const Splash(),
    home: (context) => const Home(),
};


}