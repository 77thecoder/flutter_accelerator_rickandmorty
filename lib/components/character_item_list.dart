import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class CharacterItemList extends StatelessWidget {
  const CharacterItemList({Key? key, required this.character})
      : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 74,
          height: 74,
          child: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/images/avatars/' + character.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatus(),
            Text(character.name, style: AppStyle.characterName),
            Row(
              children: [
                Text(
                  character.species + ', ',
                  style: AppStyle.caption,
                ),
                Text(
                  character.gender,
                  style: AppStyle.caption,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildStatus() {
    switch (character.status) {
      case 'alive':
        return Text(ALIVE, style: AppStyle.status_alive);
      case 'dead':
        return Text(DEAD, style: AppStyle.status_dead);
      default:
        return Text(ALIVE, style: AppStyle.status_alive);
    }
  }
}
