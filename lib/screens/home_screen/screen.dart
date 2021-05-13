import 'package:flutter/material.dart';
import 'package:rickandmorty/components/search_widget.dart';
import 'package:rickandmorty/theme/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.background,
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          SearchWidget(),
        ],
      ),
    );
  }
}
