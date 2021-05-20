import 'package:flutter/material.dart';
import 'package:rickandmorty/data/models/episode.dart';
import 'package:rickandmorty/resources/constants.dart';
import 'package:rickandmorty/theme/main_theme.dart';

class EpisodeItemList extends StatelessWidget {
  const EpisodeItemList({Key? key, required this.episode}) : super(key: key);

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('pressed episode'),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/series/' + episode.image),
              ),
            ),
          ),
          // const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                SERIES + ' ' + episode.series.toString(),
                style: AppStyle.captionSeries,
              ),
              Text(
                episode.title,
                style: AppStyle.seriesTitle,
              ),
              Text(
                episode.date,
                style: AppStyle.body2,
              ),
            ],
          ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorTheme.white,
                size: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
