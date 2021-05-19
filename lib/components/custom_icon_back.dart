import 'package:flutter/material.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class CustomIconBack extends StatelessWidget {
  const CustomIconBack({
    Key? key,
    required this.backgroundColor,
    required this.iconColor,
  }) : super(key: key);

  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back,
          color: iconColor,
        ),
      ),
    );
  }
}
