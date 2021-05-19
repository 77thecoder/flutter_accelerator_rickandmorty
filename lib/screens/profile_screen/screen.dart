import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rickandmorty/components/custom_icon_back.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.background,
      body: _buildScreen(context),
    );
  }

  Widget _buildScreen(BuildContext context) {
    return Stack(
      children: [
        Container(),
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
              decoration:
                  BoxDecoration(color: ColorTheme.grey1.withOpacity(0.65)),
            ),
          ),
        ),
        Positioned(
          top: 54,
          left: 24,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomIconBack(
              backgroundColor: ColorTheme.backgroundSearch,
              iconColor: ColorTheme.white,
            ),
          ),
        ),
        Positioned(
          top: 138,
          left: MediaQuery.of(context).size.width / 2 - 73,
          child: Container(
            width: 146,
            height: 146,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/avatars/rick_sanches.jpg'),
                fit: BoxFit.contain,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorTheme.background,
                width: 6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
