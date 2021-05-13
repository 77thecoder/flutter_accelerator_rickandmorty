import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/theme/main_theme.dart';

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
          suffixIcon: IconButton(
            icon: SvgPicture.asset(
              'assets/svg_icons/filter.svg',
              color: ColorTheme.grey1,
            ),
            iconSize: 24,
            onPressed: () => print('pressed icon filter'),
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
