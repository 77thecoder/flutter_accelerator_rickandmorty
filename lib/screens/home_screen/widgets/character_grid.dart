import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rickandmorty/components/character_Item_grid.dart';
import 'package:rickandmorty/data/models/character.dart';

class CharacterGrid extends StatelessWidget {
  const CharacterGrid({Key? key, required this.list}) : super(key: key);

  final List<Character> list;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: true,
      crossAxisCount: 2,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) =>
          CharacterItemGrid(character: list[index]),
      staggeredTileBuilder: (int index) => StaggeredTile.count(1, 1),
      mainAxisSpacing: 45.0,
      // crossAxisSpacing: 10.0,
    );
  }
}
