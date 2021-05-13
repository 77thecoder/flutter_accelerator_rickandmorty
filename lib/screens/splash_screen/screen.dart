import 'package:flutter/material.dart';
import 'package:rickandmorty/resources/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, ROUTE_HOME);
    });
    
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash_image.jpg'),
          fit: BoxFit.fill
        ),
      ),
    );
  }
}
