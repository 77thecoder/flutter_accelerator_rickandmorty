import 'dart:ui';

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
    return Stack(
      children: [
        Container(
          height: 218,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/avatars/rick_sanches.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              decoration: BoxDecoration(color: ColorTheme.grey1.withOpacity(0.65)),
            ),
          ),
        ),
      ],
    );
  }
}
