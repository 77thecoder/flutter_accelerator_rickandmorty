import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/screens/profile_screen/profile_screen_arguments.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class CharacterItemGrid extends StatelessWidget {
  const CharacterItemGrid({Key? key, required this.character})
      : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ROUTE_PROFILE, arguments: ProfileScreenArguments(id: character.id));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/avatars/' + character.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          _buildStatus(),
          Text(character.name, style: AppStyle.characterName),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ],
      ),
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
