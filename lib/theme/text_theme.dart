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

  static const caption1 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    color: ColorTheme.grey1,
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

  static const profileCharacterName = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 34,
    height: 40 / 34,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    color: ColorTheme.white,
  );

  static const profileCharacterDescription = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    height: 19.5 / 13,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    color: ColorTheme.white,
  );

  static const profileCharacterValue = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    color: ColorTheme.white,
  );

  static const body2 = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    color: ColorTheme.caption,
  );

  static const titleSection = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    height: 28 / 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    color: ColorTheme.white,
  );

  static const captionSeries = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 10,
    height: 16 / 10,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    color: ColorTheme.captionSeries,
  );

  static const seriesTitle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    color: ColorTheme.white,
  );
}