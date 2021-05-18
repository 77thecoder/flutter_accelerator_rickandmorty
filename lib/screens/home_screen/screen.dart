import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickandmorty/components/character_Item_grid.dart';
import 'package:rickandmorty/components/character_item_list.dart';
import 'package:rickandmorty/components/search_widget.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/data/repository.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/screens/home_screen/widgets/appbar_list_characters.dart';
import 'package:rickandmorty/screens/home_screen/widgets/character_list.dart';
import 'package:rickandmorty/theme/color_theme.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Repository _repository = Repository();
  late List<Character> _list;
  bool isList = true;

  @override
  void initState() {
    _list = _repository.getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarListCharacters(
        isList: true,
        count: 111,
        onListSelected: () {
          setState(() {
            isList = !isList;
          });
        }
      ),
      backgroundColor: ColorTheme.background,
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    return Container(
      padding: EdgeInsets.all(16),
      child: isList ? CharacterList(list: _list,) : _buildCharacterGrid(),
    );
  }

  Widget _buildCharacterList() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: CharacterItemList(character: _list[index]),
        );
      },
    );
  }

  Widget _buildCharacterGrid() {
    return StaggeredGridView.countBuilder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: true,
      crossAxisCount: 2,
      itemCount: _list.length,
      itemBuilder: (BuildContext context, int index) =>
          CharacterItemGrid(character: _list[index]),
      staggeredTileBuilder: (int index) => StaggeredTile.count(1, 1),
      mainAxisSpacing: 45.0,
      // crossAxisSpacing: 10.0,
    );
  }
}
