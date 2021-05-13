import 'package:flutter/material.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class AppStyle {
  AppStyle._();

  static const body1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 10,
    height: 16 / 10,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: ColorTheme.grey1,
  );

  static const caption = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    color: ColorTheme.caption,
  );

  static const characterName = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    color: ColorTheme.white,
  );

  static const status_alive = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 10,
    height: 16 / 10,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    color: ColorTheme.status_alive,
  );

  static const status_dead = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 10,
    height: 16 / 10,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    color: ColorTheme.status_dead,
  );

  static const hint = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.44,
    color: ColorTheme.grey1,
  );
}