import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickandmorty/components/character_Item_grid.dart';
import 'package:rickandmorty/components/character_item_list.dart';
import 'package:rickandmorty/components/search_widget.dart';
import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/data/repository.dart';
import 'package:rickandmorty/resources/constants.dart';
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
      backgroundColor: ColorTheme.background,
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          _buildScreen(),
        ],
      ),
    );
  }

  Widget _buildScreen() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SearchWidget(),
          const SizedBox(height: 24),
          _buildCountAndTypeView(),
          const SizedBox(height: 24),
          isList ? _buildCharacterList() : _buildCharacterGrid(),
        ],
      ),
    );
  }

  Widget _buildCountAndTypeView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(TOTAL_CHARACTER, style: AppStyle.body1),
                const SizedBox(width: 10),
                Text('200', style: AppStyle.body1),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isList = !isList;
                  });
                },
                child: isList
                  ? SvgPicture.asset('assets/svg_icons/grid.svg')
                  : SvgPicture.asset('assets/svg_icons/list.svg'),
              ),
            ],
          ),
        ),
      ],
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
      itemBuilder: (BuildContext context, int index) => CharacterItemGrid(character: _list[index]),
      staggeredTileBuilder: (int index) => StaggeredTile.count(1, 1),
      mainAxisSpacing: 45.0,
      // crossAxisSpacing: 10.0,
    );
  }
}
