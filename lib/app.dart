import 'package:flutter/material.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Главная',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: ROUTE_SPLASH,
    );
  }
}