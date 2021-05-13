import 'package:flutter/material.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/screens/home_screen/screen.dart';
import 'package:rickandmorty/screens/splash_screen/screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case ROUTE_SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}