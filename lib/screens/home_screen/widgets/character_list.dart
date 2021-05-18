import 'package:flutter/material.dart';
import 'package:rickandmorty/components/character_item_list.dart';
import 'package:rickandmorty/data/models/character.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({Key? key, required this.list}) : super(key: key);

  final List<Character> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: CharacterItemList(character: list[index]),
        );
      },
    );
  }
}
