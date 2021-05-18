import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/data/repository.dart';
import 'package:rickandmorty/screens/home_screen/widgets/appbar_list_characters.dart';
import 'package:rickandmorty/screens/home_screen/widgets/character_grid.dart';
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
        count: 200,
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
      child: isList ? CharacterList(list: _list,) : CharacterGrid(list: _list,),
    );
  }
}
