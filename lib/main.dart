import 'package:flutter/material.dart';
import 'package:rickandmorty/theme/main_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick And Morty',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.background,
      body: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Рик Санчез', style: AppStyle.characterName,),
      ),
    );
  }
}


class MyScreen1 extends StatelessWidget {
  const MyScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

