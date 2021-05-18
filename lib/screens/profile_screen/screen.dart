import 'package:flutter/material.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.background,
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    return Center(child: Text('Profile ' + id.toString(), style: AppStyle.characterName),);
  }
}
