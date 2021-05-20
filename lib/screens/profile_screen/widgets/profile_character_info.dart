import 'package:flutter/material.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class ProfileCharacterInfo extends StatelessWidget {
  const ProfileCharacterInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(GENDER, style: AppStyle.caption1),
                  const SizedBox(height: 4),
                  Text('Мужской', style: AppStyle.profileCharacterValue),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(RACE, style: AppStyle.caption1),
                  const SizedBox(height: 4),
                  Text('Человек', style: AppStyle.profileCharacterValue),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(PLACEOFBIRTH, style: AppStyle.caption1),
                const SizedBox(height: 4),
                Text('Земля С-137', style: AppStyle.profileCharacterValue),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorTheme.white,
                  size: 12,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(LOCATION, style: AppStyle.caption1),
                const SizedBox(height: 4),
                Text('Земля (Измерение подменны)', style: AppStyle.profileCharacterValue),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorTheme.white,
                  size: 12,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
