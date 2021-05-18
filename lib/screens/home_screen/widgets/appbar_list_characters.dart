import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class AppBarListCharacters extends StatefulWidget implements PreferredSizeWidget {
  const AppBarListCharacters({
    Key? key,
    required this.count,
    required this.isList,
    required this.onListSelected,
  }) : super(key: key);

  final int count;
  final bool isList;
  final VoidCallback onListSelected;

  @override
  _AppBarListCharactersState createState() => _AppBarListCharactersState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(120);
}

class _AppBarListCharactersState extends State<AppBarListCharacters> {
  late int _count;
  late bool _isList;


  @override
  void initState() {
    _count = widget.count;
    _isList = widget.isList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 40, right: 16),
      child: Column(
        children: [
          SearchWidget(),
          const SizedBox(height: 24),
          _buildCountAndTypeView(),
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
                Text(_count.toString(), style: AppStyle.body1),
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
                    _isList = !_isList;
                  });
                  widget.onListSelected();
                },
                child: _isList
                    ? SvgPicture.asset('assets/svg_icons/grid.svg')
                    : SvgPicture.asset('assets/svg_icons/list.svg'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48,
      child: TextField(
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        maxLines: 1,
        onChanged: (value) {},
        controller: _editingController,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: SvgPicture.asset(
              'assets/svg_icons/search.svg',
              color: ColorTheme.grey1,
            ),
            iconSize: 24,
            onPressed: () => print('pressed icon search'),
          ),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 24,
                child: const SizedBox(
                  width: 1,
                  child: VerticalDivider(
                    color: ColorTheme.grey1,
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/svg_icons/filter.svg',
                  color: ColorTheme.grey1,
                ),
                iconSize: 24,
                onPressed: () => print('pressed icon filter'),
              ),
            ],
          ),
          filled: true,
          fillColor: ColorTheme.backgroundSearch,
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorTheme.backgroundSearch, width: 0.0),
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
            // borderSide: BorderSide(
            //   color: AppTheme.nearlyBlack,
            // ),
          ),
          hintText: SEARCH_HINT,
          hintStyle: AppStyle.hint,
        ),
        onSubmitted: (String str) {
          print(str);
        },
      ),
    );
  }
}
